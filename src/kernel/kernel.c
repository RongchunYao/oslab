#include "include/type.h"
#include "include/intr.h"
#include "include/x86.h"

#define run_sta 1
#define ready_sta 2
#define wait_sta 3
extern void init_serial();
extern void init_intr();
extern void init_timer();
extern void init_idt();
extern void init_seg();
extern void printk(const char * , ...);
extern void basic_put(char);
extern void load();
extern void init_PCB();
extern int add_PCB(uint32_t,struct TrapFrame,const char*,uint32_t,uint32_t);
extern uint32_t entry;
extern void reschedule();
struct TrapFrame trap;
int main()
{
	disable_interrupt();
	init_serial();
	init_timer();
	init_intr();
	init_idt();
	init_seg();
	asm volatile("movl $0x3f0000,%%esp"::);
	load();	
	init_PCB();
	trap.eip=entry;
	trap.cs=(3<<3)|3;
	trap.eflags=0x202;
	trap.esp=0x1f0000;	
	trap.ss=(4<<3)|3;
	enable_interrupt();
	add_PCB(run_sta,trap,"game",10,0);
	reschedule();
	while(1);		
}	
