#include "../../include/common.h"
#include "include/intr.h"
#include "include/x86.h"

extern void timer_event();
extern void keyboard_event(int);
extern void init_serial();
extern void serial_out(char);
extern void game_loop();
extern void init_intr();
extern void init_timer();
extern void init_idt();
extern void init_seg();

extern void set_timer_handler(void (*ptr)());
extern void set_keyboard_handler(void (*ptr)());

int main()
{
	init_serial();
	init_timer();
	init_intr();
	init_idt();
	
	set_timer_handler(timer_event);
	set_keyboard_handler(keyboard_event);

	enable_interrupt();

	game_loop();
	return 0;
}	
