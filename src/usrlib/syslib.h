#include"type.h"
int getpid()
{
	int pid;
	asm volatile ("int $ 0x80"::"a"(6));
	asm volatile ("movl %%eax,%0":"=a"(pid):);
	return pid;
}

void my_sleep(int time)
{
	asm volatile ("int $ 0x80"::"a"(7),"b"(time));
}


void my_exit()
{
	asm volatile ("int $ 0x80"::"a"(5));
}

int my_fork()
{
	int i;
	asm volatile ("int $ 0x80"::"a"(8));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}

inline int get_time()
{
	int time;
	asm volatile ("movl $2,%%eax"::);
	asm volatile ("movl $0,%%ebx"::);
	asm volatile ("int $ 0x80"::);
	asm volatile ("movl %%eax,%0":"=a"(time):);
	return time;
}

void time_pop()
{
	asm volatile ("movl $2,%%eax"::);
	asm volatile ("movl $1,%%ebx"::);
	asm volatile ("int $ 0x80"::);
}

int last_key_code()
{
	int key_code;
	asm volatile ("movl $3,%%eax"::);
	asm volatile ("movl $0,%%ebx"::);
	asm volatile ("int $ 0x80"::);
	asm volatile ("movl %%eax,%0":"=a"(key_code):);
	return key_code;
}
 
void reset_last_key()
{
	asm volatile ("movl $3,%%eax"::);
	asm volatile ("movl $1,%%ebx"::);
	asm volatile ("int $ 0x80"::);
}
