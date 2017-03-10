#include "../include/common.h"
extern void init_serial();
extern void serial_out(char);
extern void game_loop();
void main()
{
	init_serial();
	printk("%d\n",18);
	printk("%x",18);
	game_loop();
}	
