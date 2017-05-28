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

int my_pthread(void * function, void * arg)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(9),"b"(function),"c"(arg));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}

int sem_init(sem_t * sem, uint32_t  val)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(10),"b"(sem),"c"(val));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}

int sem_destroy(sem_t * sem)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(11),"b"(sem));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}
	
int sem_wait(sem_t * sem )
{
	int i;
	asm volatile ("int $ 0x80"::"a"(12),"b"(sem));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}

int sem_trywait(sem_t * sem)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(14),"b"(sem));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}

int sem_post(sem_t * sem)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(13),"b"(sem));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;

}





