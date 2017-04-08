#include "include/type.h"
#include "include/intr.h"

#define KSTACK_SIZE 4096
#define NR_PCB 100

#define NULL 0


struct PCB_type {
    struct TrapFrame * tf;
    bool present;
    uint32_t pid;
    struct PCB_type * next;
    struct PCB_type * front;
    uint8_t kstack[KSTACK_SIZE];
};

struct PCB_type PCB[100];
int head=0;
int tail=0;
int nr_PCB;

void init_PCB()
{
	PCB[0].pid=0;
	PCB[0].front=NULL;
	PCB[0].next=NULL;
	PCB[0].present=1;
	nr_PCB=1;
}

void add_PCB(void * Trap_frame)
{
	if(nr_PCB==100) {printk("no more resources\n"); return;}
	int i;
	for(i=1;i<100;i++) {if(PCB[i].present==0) break;}
	PCB[i].present=1;
	struct PCB_type * temp= &PCB[tail];
	PCB[tail].next=&PCB[i];
	PCB[i].front=temp;
	PCB[i].next=NULL;
	PCB[i].pid=i;
	nr_PCB++;
	PCB[i].tf=Trap_frame;
}

void delete_PCB(int pid)
{
	if(pid==0) {printk("can not delete the initial process"); return;}
	PCB[pid].present=0;
	if(tail==pid) tail=PCB[pid].front->pid;
	struct PCB_type * temp=PCB[pid].front;
	PCB[pid].front->next=PCB[pid].next;
	if(PCB[pid].next) PCB[pid].next->front=temp;
	nr_PCB--;
}


