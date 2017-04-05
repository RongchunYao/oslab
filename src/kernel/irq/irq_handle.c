#include "../include/x86.h"
#include "../include/intr.h"
static void (*do_timer)(void);
static void (*do_keyboard)(int);


void set_timer_handler(void (*ptr)(void)){do_timer=ptr;}
void set_keyboard_handler(void (*ptr)(int)){do_keyboard=ptr;}

extern void printk(const char * , ...);
extern void serial_out(char);
extern int get_time();
extern void time_pop();
extern void reset_last_key();
extern int last_key_code();

void irq_handle(struct TrapFrame *tf)
{
	if(tf->irq < 1000){printk("unhandled\n");  }
	else if (tf->irq == 1000) {
		do_timer();
	} else if (tf->irq == 1001) {
		uint32_t code = inb(0x60);
		uint32_t val = inb(0x61);

		outb(0x61, val | 0x80); //tell i8259 that have finished
		outb(0x61, val);

		do_keyboard(code);
	}
	else if(tf->irq == 0x80)
	{
		if(tf->eax==1) //1 is putc
		{
			if(tf->ebx==1) //standard output
			{
				serial_out((char)(tf->ecx));
			}
		}
		else if(tf->eax==2) //2 is time
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
		else if(tf->eax==3) //keyboard
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
	}

	else {printk("unhandled\n"); }
}
