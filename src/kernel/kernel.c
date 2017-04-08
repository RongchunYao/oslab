#include "include/type.h"
#include "include/intr.h"
#include "include/x86.h"

extern void init_serial();
extern void init_intr();
extern void init_timer();
extern void init_idt();
extern void init_seg();
extern void printk(const char * , ...);
extern void basic_put(char);
extern void load();
extern void init_PCB();
extern void add_PCB(void *);
extern uint32_t entry;
struct TrapFrame trap;
struct TrapFrame * go;
int main()
{
	
	disable_interrupt();
	init_serial();
	init_timer();
	init_intr();
	init_idt();
	init_seg();
	asm volatile("movl $0x280000,%%esp"::);
	load();
	enable_interrupt();
	init_PCB();
	go=&trap;
	trap.eip=entry;
	printk("%x",entry);
	trap.cs=(3<<3)|3;
	trap.eflags=0x202;
	trap.esp=0x500000;	
	trap.ss=(4<<3)|3;
	add_PCB((void *)go);
	
	asm volatile("movw $0x23,%%ax"::);
	asm volatile("movw %%ax,%%ds"::);
	asm volatile("movw %%ax,%%es"::);
	asm volatile("movl %0,%%esp"::"r"(go));
	asm volatile("addl $0x28,%%esp"::);
	while(1);
	asm volatile("iret"::);
	while(1);		
}	
