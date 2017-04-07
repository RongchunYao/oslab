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
int main()
{
	
	disable_interrupt();
	init_serial();
	init_timer();
	init_intr();
	init_idt();
	init_seg();
	asm volatile("movl $0x300000,%%esp"::);
	printk("fuck you bitch\n");
	while(1);
		
}	
