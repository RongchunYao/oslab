int getpid()
{
	int pid;
	asm volatile ("movl $6,%%eax"::);
	asm volatile ("int $ 0x80"::);
	asm volatile ("movl %%eax,%0":"=a"(pid):);
	return pid;
}

void my_sleep(int time)
{
	asm volatile ("int $ 0x80"::"a"(7),"b"(time));
}


void my_exit()
{
	asm volatile ("movl $5,%%eax"::);
	asm volatile ("int $ 0x80"::);
}

void my_fork()
{
	asm volatile ("int $ 0x80"::"a"(8));
}
