#include "type.h"
#include "intr.h"
#include "x86.h"
#include "file.h"
#include "memory.h"
#include "process.h"
#include "device.h"

int main()
{
	printk("hello! this is kernel\n");
	disable_interrupt();
	init_serial();
	init_timer();
	init_intr();
	init_idt();
	init_seg();	
	page_init();
	init_PCB();
	load_maps();
	open("/kernel");
	while(1);
	//load_PCB(307200,"test");
	//load_PCB(102400,"game");
	reschedule();
	while(1);		
}	
