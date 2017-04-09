void print(const char *ctl, ...) {
	asm volatile ("movl %0,%%ecx"::"r"(ctl));
	asm volatile ("movl $1,%%eax"::);
	asm volatile ("movl $1,%%ebx"::);
	asm volatile ("int $0x80"::);
}

char a[]="ffff";

int  main()

{	asm volatile ("movl %0,%%ecx"::"r"(a));
	asm volatile ("movl $1,%%eax"::);
	asm volatile ("movl $1,%%ebx"::);
	asm volatile ("int $0x80"::);
	while(1);
	return 0;
}
