
int getpid()
{
	int pid;
	asm volatile ("movl $6,%%eax"::);
	asm volatile ("int $ 0x80"::);
	asm volatile ("movl %%eax,%0":"=a"(pid):);
	return pid;
}

int main()
{
getpid();
return 1;
}
