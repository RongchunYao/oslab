#include "include/type.h"
#include "include/intr.h"
#include "include/x86.h"

#define run_sta 1
#define ready_sta 2
#define wait_sta 3

#define user_cs 3
#define user_ss 4
#define user_dpl 3
#define SEG(cs,dpl) ((cs<<3)|dpl)

extern void init_serial();
extern void init_intr();
extern void init_timer();
extern void init_idt();
extern void init_seg();
extern void printk(const char * , ...);
extern void basic_put(char);
extern uint32_t load(uint32_t);
extern void init_PCB();
extern int add_PCB(uint32_t,struct TrapFrame*,const char*,uint32_t,uint32_t);
extern void reschedule();
extern void debug();
void set_tss(uint32_t);
struct TrapFrame trap;
struct TrapFrame trap2;
int main()
{
	asm volatile("cli"::);
	disable_interrupt();
	init_serial();
	init_timer();
	init_intr();
	init_idt();
	init_seg();
	asm volatile("movl $0x2f0000,%%esp"::);
	init_PCB();
	trap.eip=load(102400);
	trap.cs=SEG(user_cs,user_dpl);
	trap.eflags=0x202;
	trap.esp=0x1f0000;	
	trap.ss=SEG(user_ss,user_dpl);
	trap2.eip=load(204800);
	trap2.cs=SEG(user_cs,user_dpl);
	trap2.eflags=0x202;
	trap2.esp=0x500000;
	trap2.ss=SEG(user_ss,user_dpl);
	add_PCB(run_sta,&trap,"game",10,0);
	add_PCB(run_sta,&trap2,"shell",10,0);
	reschedule();
	while(1);		
}	
