#include "../include/x86.h"
#include "../include/intr.h"
static void (*do_timer)(void);
static void (*do_keyboard)(int);


void set_timer_handler(void (*ptr)(void)){do_timer=ptr;}
void set_keyboard_handler(void (*ptr)(int)){do_keyboard=ptr;}


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
		
	}

	else {printk("unhandled\n"); }
}
