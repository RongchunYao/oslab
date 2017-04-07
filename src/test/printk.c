#include "../type.h"

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

void change_x(unsigned int a,char * b)
{
	int sum=0;
	char f[100];	
	int i=0;
	unsigned int temp=a;
	if(temp==0) {b[0]='0';b[1]=0; return;}
	while(temp)
	{
		if(temp%16<=9) f[sum++]=(temp%16)+'0';
		else f[sum++]= (temp%16)-10+'A';
		temp=temp/16;
	}
	while(sum)
	{
	b[i++]=f[--sum];
	}
	b[i]='\0';
}


void v_fprintf(void (*printer)(char), const char *ctl, void **args) {
	const char * temp = ctl;
	char temp_str[100];
	void ** temp_arg= args;
	char temp_char;
	int i=0;
	while(temp[i]!='\0')
	{
		if(temp[i]!='%') {temp_char=temp[i]; printer(temp_char); i++;}
		else {i++; 
		if(temp[i]=='%') {printer('%'); i++;}
		else if(temp[i]=='c') {i++; temp_char=*((char *)(temp_arg)); printer(temp_char); (void **)temp_arg++; }
		else if(temp[i]=='d'){i++; change(*(int *)(temp_arg),temp_str); v_fprintf(printer,temp_str,0); (void **)temp_arg++;}
		else if(temp[i]=='x') {i++; change_x(*(unsigned int *)(temp_arg),temp_str); v_fprintf(printer,temp_str,0); (void **)temp_arg++;}
		else if(temp[i]=='s') {i++; v_fprintf(printer,*(const char **)temp_arg,0);  (void  **)temp_arg++;  }
		else {v_fprintf(printer,"sorry, cannot support this now\n",0); break;}
	}
	}

	
}

void basic_put(char ch)
{
	asm volatile ("movb %0,%%cl"::"ba"(ch));
	asm volatile ("movl $1,%%eax"::);
	asm volatile ("movl $1,%%ebx"::);
	asm volatile ("int $0x80"::);
}

/* __attribute__((__noinline__))  here is to disable inlining for this function to avoid some optimization problems for gcc 4.7 */
void __attribute__((__noinline__)) 
printk(const char *ctl, ...) {
	void **args = (void **)&ctl + 1;
	v_fprintf(basic_put, ctl, args);
}

void my_memcpy(void *dest, const void *src, size_t size) {
	asm volatile ("cld; rep movsb" : : "c"(size), "S"(src), "D"(dest));
}

void my_memset(void *dest, int data, size_t size) {
	asm volatile ("cld; rep stosb" : : "c"(size), "a"(data), "D"(dest));
}






