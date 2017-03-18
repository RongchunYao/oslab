#include "../include/common.h"
#include "../include/intr.h"
#include "../include/x86.h"
extern void timer_event();
extern void keyboard_event(int);
extern void init_serial();
extern void serial_out(char);
extern void game_loop();
extern void init_intr();
extern void init_timer();
extern void init_idt();

extern void set_timer_handler(void (*ptr)());
extern void set_keyboard_handler(void (*ptr)());

void main()
{
	init_serial();
	init_timer();
	init_intr();
	init_idt();
	
	set_timer_handler(timer_event);
	set_keyboard_handler(keyboard_event);
	
	printk("Printk test begin...\n");
printk("the answer should be:\n");
printk("#######################################################\n");
printk("Hello, welcome to OSlab! I'm the body of the game. ");
printk("Bootblock loads me to the memory position of 0x100000, and Makefile also tells me that I'm at the location of 0x100000. ");
printk("~!@#$^&*()_+`1234567890-=...... ");
printk("Now I will test your printk: ");
printk("1 + 1 = 2, 123 * 456 = 56088\n0, -1, -2147483648, -1412505855, -32768, 102030\n0, ffffffff, 80000000, abcdef01, ffff8000, 18e8e\n");
printk("#######################################################\n");
printk("your answer:\n");
printk("=======================================================\n");
printk("%s %s%scome %co%s", "Hello,", "", "wel", 't', " ");
printk("%c%c%c%c%c! ", 'O', 'S', 'l', 'a', 'b');
printk("I'm the %s of %s. %s 0x%x, %s 0x%x. ", "body", "the game", "Bootblock loads me to the memory position of",
    0x100000, "and Makefile also tells me that I'm at the location of", 0x100000);
printk("~!@#$^&*()_+`1234567890-=...... ");
printk("Now I will test your printk: ");
printk("%d + %d = %d, %d * %d = %d\n", 1, 1, 1 + 1, 123, 456, 123 * 456);
printk("%d, %d, %d, %d, %d, %d\n", 0, 0xffffffff, 0x80000000, 0xabcedf01, -32768, 102030);
printk("%x, %x, %x, %x, %x, %x\n", 0, 0xffffffff, 0x80000000, 0xabcedf01, -32768, 102030);
printk("=======================================================\n");
printk("Test end!!! Good luck!!!\n");
	enable_interrupt();

	game_loop();//game start from here

}	
