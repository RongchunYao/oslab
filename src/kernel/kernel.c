#include "type.h"
#include "intr.h"
#include "x86.h"
#include "file.h"
#include "memory.h"
#include "process.h"
#include "device.h"

extern void filecheck(int);
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
	
	init_file();
	init_PCB();
	FILE * fd;
	fd=open("what.txt");
	
	if(fd->success==0) printk("fail to open2333333\n");
	char buff[]="abcdefg hello, OS TA!";
	write(fd,(uint8_t *)buff,sizeof buff);
	close(fd);
	

	file_load_PCB("/load_file/test","test");
	file_load_PCB("/load_file/game","game");
		
	reschedule();
	while(1);		
}	
