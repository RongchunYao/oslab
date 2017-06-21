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
	init_file();
	file_load_PCB("game","game");
	reschedule();
	while(1);		
}	
