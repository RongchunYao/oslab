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
extern void load_PCB(uint32_t,const char* );
extern void init_PCB();
extern void reschedule();
extern void debug();
extern void page_init();

int main()
{
	printk("hello! this is kernel\n");
	disable_interrupt();
	init_serial();
	init_timer();
	init_intr();
	init_idt();
	init_seg();
	init_PCB();
	page_init();
	load_PCB(102400,"game");
	reschedule();
	while(1);		
}	
