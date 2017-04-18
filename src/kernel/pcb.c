#include "include/type.h"
#include "include/intr.h"

#define KSTACK_SIZE 4096
#define NR_PCB 100

#define NULL 0
#define run_sta 1
#define ready_sta 2
#define wait_sta 3

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
    char name[30];
    struct TrapFrame  tf;
    bool present;
    uint32_t ppid;
    uint32_t pid;
    uint32_t status;
    uint32_t time;
    struct PCB_type * next;
    struct PCB_type * front;
    uint8_t kstack[KSTACK_SIZE];
};

struct PCB_type PCB[100];

int run_head=0;
int run_tail=0;

int ready_head=0; 
int ready_tail=0;
 
int wait_head=0;
int wait_tail=0;

int nr_run_PCB;
int nr_ready_PCB;
int nr_wait_PCB;
 
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
	for(i=0;i<100;i++)
	{
		PCB[i].pid=i;
	}
}

int add_PCB(uint32_t status,struct TrapFrame trapframe,const char * name,uint32_t time,uint32_t ppid)
{
	if(nr_run_PCB+nr_ready_PCB+nr_wait_PCB==100) {printk("no more resources\n"); return 0;}
	int i;
	for(i=1;i<100;i++) {if(PCB[i].present==0) break;}
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
	return i;
}

void delete_PCB(int pid)
{
	if(pid==0) {printk("can not delete the initial process"); return;}
	if(PCB[pid].present==0) {printk("can not delete a NULL process"); return;}
	PCB[pid].present=0;struct PCB_type * temp;
	if(PCB[pid].status==run_sta)
	{
		if(run_tail==pid) run_tail=PCB[pid].front->pid;
		temp=PCB[pid].front;
		PCB[pid].front->next=PCB[pid].next;
		if(PCB[pid].next) PCB[pid].next->front=temp;
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
		set_tss((uint32_t)(&((PCB[i].next)->kstack)));
		asm volatile("movw $0x23,%%ax"::);
		asm volatile("movw %%ax,%%ds"::);
		asm volatile("movw %%ax,%%es"::);
		asm volatile("movl %0,%%esp"::"r"(&((PCB[i].next)->tf)));
		asm volatile("addl $0x28,%%esp; "::);
		asm volatile("iret"::);
	}
	else
	{
		PCB[0].next=&PCB[ready_head];
		PCB[ready_head].front=&PCB[0];
		ready_head=0;
		ready_tail=0;
		set_tss((uint32_t)(&((PCB[i].next)->kstack)));
		asm volatile("movw $0x23,%%ax"::);
		asm volatile("movw %%ax,%%ds"::);
		asm volatile("movw %%ax,%%es"::);
		asm volatile("movl %0,%%esp"::"r"(&((PCB[i].next)->tf)));
		asm volatile("addl $0x28,%%esp; "::);
		asm volatile("iret"::);
	}

}

void time_treat()
{
	struct PCB_type *temp=&PCB[run_head];
	if(nr_run_PCB!=1)
	{
		(PCB[run_head].next)->time--;
		if((PCB[run_head].next)->time==0)
		{
			add_PCB(ready_sta,(PCB[run_head].next)->tf,(const char *)((PCB[run_head].next)->name),10,(PCB[run_head].next)->ppid);
			delete_PCB((PCB[run_head].next)->pid);
		}
	}
	reschedule();
}

void process_exit()
{
	delete_PCB((PCB[run_head].next)->pid);
	reschedule();	
}


