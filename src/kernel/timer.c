#include "include/x86.h"

#define TIMER_PORT 0x40
#define FREQ_8253 1193182
#define HZ 1000

void init_timer(void)
{
	int counter = FREQ_8253 / HZ;
	outb(TIMER_PORT + 3, 0x34);
	outb(TIMER_PORT + 0, counter % 256);
	outb(TIMER_PORT + 0, counter / 256);
}
