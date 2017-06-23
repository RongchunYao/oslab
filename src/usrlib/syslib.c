#include"syslib.h"

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

FILE * open(char * name)
{	
	FILE * i;
	asm volatile ("int $ 0x80"::"a"(15),"b"(name));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}

int close(FILE * fd)
{
	int   i;
	asm volatile ("int $ 0x80"::"a"(16),"b"(fd));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}

int lseek( FILE *fd, int off, int where)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(17),"b"(fd),"c"(off),"d"(where));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
}

int read(FILE *fd , uint8_t *buf,int len)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(18),"b"(fd),"c"(buf),"d"(len));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
} 

int write(FILE *fd , uint8_t *buf,int len)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(19),"b"(fd),"c"(buf),"d"(len));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;
} 

int open_check(FILE * fd)
{
	int i;
	asm volatile ("int $ 0x80"::"a"(20),"b"(fd));
	asm volatile ("movl %%eax,%0":"=a"(i):);
	return i;	
}


