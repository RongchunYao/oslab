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
