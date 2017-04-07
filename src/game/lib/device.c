int get_time()
{
	int time;
	asm volatile ("movb $2,%%eax"::);
	asm volatile ("movl $0,%%ebx"::);
	asm volatile ("int $ 0x80"::);
	asm volatile ("movl %%eax,%0":"=a"(time):);
	return time;
}

void time_pop()
{
	asm volatile ("movb $2,%%eax"::);
	asm volatile ("movl $1,%%ebx"::);
	asm volatile ("int $ 0x80"::);
}

int last_key_code()
{
	int key_code;
	asm volatile ("movb $3,%%eax"::);
	asm volatile ("movl $0,%%ebx"::);
	asm volatile ("int $ 0x80"::);
	asm volatile ("movl %%eax,%0":"=a"(key_code):);
	return key_code;
}
 
void reset_last_key()
{
	asm volatile ("movb $3,%%eax"::);
	asm volatile ("movl $1,%%ebx"::);
	asm volatile ("int $ 0x80"::);
}
