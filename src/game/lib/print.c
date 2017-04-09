#include "../type.h"


void print(const char *ctl, ...) {
	asm volatile ("movl %0,%%ecx"::"r"(ctl));
	asm volatile ("movl $1,%%eax":::"%ecx");
	asm volatile ("movl $1,%%ebx":::"%eax","%ecx");
	asm volatile ("int $0x80"::);
}

void my_memcpy(void *dest, const void *src, size_t size) {
	asm volatile ("cld; rep movsb" : : "c"(size), "S"(src), "D"(dest));
}

void my_memset(void *dest, int data, size_t size) {
	asm volatile ("cld; rep stosb" : : "c"(size), "a"(data), "D"(dest));
}

void change(int a,char * b)
{
	int sum=0;
	char f[100];	
	int i=0;
	int temp=a;
	unsigned int temp2;
	if(temp==0) {b[0]='0';b[1]='\0'; return;}
	if(temp<0) {b[i++]='-'; temp2=(unsigned int)(-temp);}
	else temp2=temp;
	while(temp2)
	{
		f[sum++]=(temp2%10)+'0';
		temp2=temp2/10;
	}
	while(sum)
	{
	b[i++]=f[--sum];
	}
	b[i]='\0';
}
