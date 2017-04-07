#include "../include/x86.h"
#include "../include/intr.h"

#define video_start 0xa0000
#define sys_write 1
#define sys_clock 2
#define sys_keyboard 3
#define sys_video  4
extern void my_memcpy(void *,const void *,size_t);
extern void printk(const char * , ...);
extern void timer_event();
extern void keyboard_event(int);
extern void serial_out(char);
extern int get_time();
extern void time_pop();
extern void reset_last_key();
extern int last_key_code();
extern void serial_out(char);

void irq_handle(struct TrapFrame *tf)
{
	if (tf->irq == 1000) {
		timer_event();
	} else if (tf->irq == 1001) {
		uint32_t code = inb(0x60);
		uint32_t val = inb(0x61);

		outb(0x61, val | 0x80); //tell i8259 that have finished
		outb(0x61, val);

		keyboard_event(code);
	}
	else if(tf->irq == 0x80)
	{
		if(tf->eax==sys_write) //1 is putc
		{
			if(tf->ebx==1) //standard output
			{
				printk((const char *)(tf->ecx));
			}
		}
		else if(tf->eax==sys_clock) //2 is time
		{
			if(tf->ebx==0) //get time
			{
				tf->eax=get_time();
			}
			else if(tf->ebx==1)
			{
				time_pop();
			}
		} 
		else if(tf->eax==sys_keyboard) //keyboard
		{
			if(tf->ebx==0) //get keycode
			{
				tf->eax=last_key_code();	
			}
			else if(tf->ebx==1) //reset
			{
				reset_last_key();
			}
		}
		else if(tf->eax==sys_video) //dispaly
		{
			my_memcpy((void *)video_start,(const void *)(tf->ebx),0x10000);
		}
	}

	else {
	//do nothing
	}
}
