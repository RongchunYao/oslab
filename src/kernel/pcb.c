#include "type.h"
#include "intr.h"
#include "mmu.h"
#include "x86.h"
#include "pmap.h"
#define NULL 0
#define run_sta 1
#define ready_sta 2
#define wait_sta 3

int use[NR_PCB];
extern struct PageInfo pages[npages];	
__attribute__((__aligned__(PGSIZE))) pte_t a[NPDENTRIES];
__attribute__((__aligned__(PGSIZE))) pde_t pgdir_pool[NR_PCB][NPDENTRIES];
struct TrapFrame tf_pool[NR_PCB];
uint32_t load(uint32_t,pde_t *);
void copy_pgdir(pde_t *, pde_t *);
extern pde_t * kern_pgdir;
void print_tf(struct TrapFrame * a)
{
	printk("eax%x\n",a->eax);
	printk("ebx%x\n",a->ebx);
	printk("ecx%x\n",a->ecx);
	printk("edx%x\n",a->edx);
	printk("edi%x\n",a->edi);
	printk("esp%x\n",a->esp);
	printk("ebp%x\n",a->ebp);
	printk("eip%x\n",a->eip);
	printk("cs%x\n",a->cs);
}



void debug();

extern void set_tss(uint32_t );

void my_strcpy(char * dest, const char * src)
{
	int i=0;
	while(src[i])
	{
		dest[i]=src[i];
		i++;
		if(i==29){dest[i]=0; return;}
	}	
	dest[i]=0;
}


struct PCB_type {
    int order;  
   struct TrapFrame  *tf;
    uint32_t pid;
    char name[32];   
    bool present;
    uint32_t ppid;
    uint32_t status;
    uint32_t time;
    struct PCB_type * next; 
    struct PCB_type * front;
    uint8_t kstack[KSTACK_SIZE];
};

struct PCB_type PCB[NR_PCB];

int run_head=0;
int run_tail=0;

int ready_head=0; 
int ready_tail=0;
 
int wait_head=0;
int wait_tail=0;

int nr_run_PCB;
int nr_ready_PCB;
int nr_wait_PCB;
 
void debug()
{
	printk("nr_run , nr_ready %d %d\n",nr_run_PCB,nr_ready_PCB);
}

int getpid()
{
	return PCB[run_head].next->pid;
}

int get_free_pid()
{
	int i=0;
	for(i=0;i<NR_PCB;i++)
	{
		if(use[i]==0) {use[i]=1;return i;}
	}
	printk("no more pid!\n");
	while(1);
}

void free_pid(int pid)
{
	use[pid]=0;
}

void init_PCB()
{
	my_strcpy(PCB[0].name,"init");
	PCB[0].pid=0;
	PCB[0].ppid=0;
	PCB[0].front=NULL;
	PCB[0].next=NULL;
	PCB[0].present=1;
	PCB[0].status=run_sta;
	PCB[0].time=10;
	nr_run_PCB=1;
	nr_ready_PCB=0;
	nr_wait_PCB=0;
	int i;
	for(i=0;i<NR_PCB;i++)
	{
		PCB[i].order=i;
		use[i]=0;
	}
	use[0]=1;
	
}

int add_PCB(uint32_t status,struct TrapFrame *trapframe,const char * name,uint32_t time,uint32_t ppid,int pid)
{
	if(nr_run_PCB+nr_ready_PCB+nr_wait_PCB==NR_PCB) {printk("no more resources\n"); asm volatile ("sti"); return 0;}
	int i;
	for(i=1;i<NR_PCB;i++) {if(PCB[i].present==0) break;}
	PCB[i].present=1;
	struct PCB_type * temp;
	if(status==run_sta)
	{
		temp = &PCB[run_tail];
		PCB[run_tail].next=&PCB[i];
		PCB[i].front=temp;
		PCB[i].next=NULL;
		run_tail=i;
		nr_run_PCB++;
	}
	else if(status==ready_sta)
	{	
		if(nr_ready_PCB==0) 
		{
			ready_head=i;
			ready_tail=i;
			PCB[i].front=NULL;
			PCB[i].next= NULL;
			nr_ready_PCB++;
		}
		else 
		{
			temp = &PCB[ready_tail];
			PCB[ready_tail].next=&PCB[i];
			PCB[i].front=temp;
			PCB[i].next=NULL;
			ready_tail=i;
			nr_ready_PCB++;
		}
	}	
	else 
	{	
		if(nr_wait_PCB==0) 
		{
			wait_head=i;
			wait_tail=i;
			PCB[i].front=NULL;
			PCB[i].next= NULL;
			nr_wait_PCB++;
		}
		else 
		{
			temp = &PCB[wait_tail];
			PCB[wait_tail].next=&PCB[i];
			PCB[i].front=temp;
			PCB[i].next=NULL;
			wait_tail=i;
			nr_wait_PCB++;
		}
	}
	my_strcpy(PCB[i].name,name);
	PCB[i].time=time;
	PCB[i].status=status;
	PCB[i].tf=trapframe;
	PCB[i].ppid=ppid;
	PCB[i].pid=pid;
	return i;
}

void delete_PCB(int pid)
{

	free_pid(PCB[pid].pid);	
	if(pid==0) {printk("can not delete the initial process"); return;}
	if(PCB[pid].present==0) {printk("can not delete a NULL process"); return;}
	PCB[pid].present=0;struct PCB_type * temp;
	if(PCB[pid].status==run_sta)
	{
		if(run_tail==pid)
		{
		run_tail=PCB[pid].front->pid;
		PCB[pid].front->next=PCB[pid].next;
		}
		else
		{
			temp=PCB[pid].front;
			PCB[pid].front->next=PCB[pid].next;
			PCB[pid].next->front=temp;
		}
		nr_run_PCB--;
	}
	else if(PCB[pid].status==ready_sta)
	{
		nr_ready_PCB--;
		if(nr_ready_PCB==0) 
		{
			ready_head=0;
			ready_tail=0;
		}
		else 
		{
			if(ready_tail==pid) ready_tail=PCB[pid].front->pid;	
			temp=PCB[pid].front;
			PCB[pid].front->next=PCB[pid].next;
			if(PCB[pid].next) PCB[pid].next->front=temp;
		}
		
	}
	else 
	{
		nr_wait_PCB--;
		if(nr_wait_PCB==0) 
		{
			wait_head=0;
			wait_tail=0;
		}
		else 
		{
			if(wait_tail==pid) wait_tail=PCB[pid].front->pid;	
			temp=PCB[pid].front;
			PCB[pid].front->next=PCB[pid].next;
			if(PCB[pid].next) PCB[pid].next->front=temp;
		}
		
	}
}


void reschedule()
{
	int i= run_head;
	if(nr_run_PCB==1&&nr_ready_PCB==0) 
	{
		while(1);
	}
	else if(nr_run_PCB>1)
	{
		//print_tf(PCB[i].next->tf);
		set_tss((uint32_t)((PCB[i].next)->kstack)+KSTACK_SIZE-8);
		lcr3((uint32_t)(&(pgdir_pool[PCB[i].next->pid][0]))-KERNBASE);
		asm volatile("movw $0x23,%%ax"::);
		asm volatile("movw %%ax,%%ds"::);
		asm volatile("movw %%ax,%%es"::);
		asm volatile("movl %0,%%esp"::"r"(((PCB[i].next)->tf)));
		asm volatile("popal"::);
		asm volatile("addl $0x8,%%esp; "::);	
		asm volatile("iret"::);
	}
	else
	{
		PCB[run_head].next=&PCB[ready_head];
		PCB[ready_head].front=&PCB[run_head];
		run_tail=ready_tail;
		ready_head=0;
		ready_tail=0;		
		nr_run_PCB+=nr_ready_PCB;
		nr_ready_PCB=0; 
		struct PCB_type * temp;
		temp=&PCB[0];
		while(temp)
		{
			temp->status=run_sta;
			temp=temp->next;
		}
	//	printk("%s\n",PCB[i].next->name);
		set_tss((uint32_t)(&(PCB[i].next)->kstack)+KSTACK_SIZE-8);
		lcr3((uint32_t)(&(pgdir_pool[PCB[i].next->pid][0]))-KERNBASE);
		asm volatile("movw $0x23,%%ax"::);
		asm volatile("movw %%ax,%%ds"::);
		asm volatile("movw %%ax,%%es"::);
		asm volatile("movl %0,%%esp"::"r"(((PCB[i].next)->tf)));
		asm volatile("popal"::);
		asm volatile("addl $0x8,%%esp; "::);
		asm volatile("iret"::);
	}

}

void time_treat(struct TrapFrame * TF)
{
	if(nr_wait_PCB!=0)
	{
		
	}
	if(nr_run_PCB!=1)
	{	
		(PCB[run_head].next)->time--;		
		if((PCB[run_head].next)->time==0)
		{
			add_PCB(ready_sta,TF,(const char *)((PCB[run_head].next)->name),200,(PCB[run_head].next)->ppid,PCB[run_head].next->pid);	
			delete_PCB((PCB[run_head].next)->order);
			reschedule();
		}
	}
	
}

void process_exit()
{
	delete_PCB((PCB[run_head].next)->pid);
	reschedule();	
}

void load_PCB(uint32_t offset,const char * name)
{
	int free_pid=get_free_pid();
	my_memcpy(&pgdir_pool[free_pid][0],kern_pgdir,4*NPDENTRIES);
	int i;
	int base = 0x400;
	for (i = 0; i < base; i++) {
		pages[i].pp_ref++;
	}
	printk("%x\n",&pgdir_pool[free_pid][0]);
	tf_pool[free_pid].eip=load(offset,&pgdir_pool[free_pid][0]);
	tf_pool[free_pid].cs=SEG(SEG_USER_CODE,DPL_USER);
	tf_pool[free_pid].eflags=USER_FLAG;
	tf_pool[free_pid].esp=USER_ESP;
	tf_pool[free_pid].ss=SEG(SEG_USER_DATA,DPL_USER);
	add_PCB(run_sta,&tf_pool[free_pid],name,100,0,free_pid);
}


