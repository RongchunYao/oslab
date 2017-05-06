#include "../include/x86.h"
#include "../include/intr.h"

#define video_start 0xc00a0000
#define sys_write 1
#define sys_clock 2
#define sys_keyboard 3
#define sys_video  4
#define sys_exit 5
#define sys_pid 6
#define sys_sleep 7
extern void print_tf(struct TrapFrame *);
extern void my_memcpy(void *,const void *,size_t);
extern void printk(const char * , ...);
extern void timer_event();
extern void keyboard_event(int);
extern void serial_out(char);
extern int get_time();
extern void time_pop();
extern void reset_last_key();
extern int last_key_code();
extern void serial_out(char);
extern void process_exit();
extern void time_treat(struct TrapFrame *);
extern int getpid();
struct TrapFrame test;
void irq_handle(struct TrapFrame *tf)
{
	if (tf->irq == 1000) {
		/*print_tf(tf);
		test.eax=tf->eax;
		test.edi=tf->edi;
		test.esi=tf->esi;
		test.ebp=tf->ebp;
		test.xxx=tf->xxx;
		test.ebx=tf->ebx;
		test.edx=tf->edx;
		test.ecx=tf->ecx;
		test.irq=tf->irq;
		test.error_code=tf->error_code;	
		test.eip=tf->eip;
		test.cs=tf->cs;
		test.eflags=tf->eflags;
		test.esp=tf->esp;
		test.ss=tf->ss;
		asm volatile("movw $0x23,%%ax"::);
		asm volatile("movw %%ax,%%ds"::);
		asm volatile("movw %%ax,%%es"::);
		asm volatile("movl %0,%%esp"::"r"(&test));
		asm volatile("popal"::);
		asm volatile("addl $0x8,%%esp; "::);
		asm volatile("iret"::);*/
		timer_event();
		time_treat(tf);
	} else if (tf->irq == 1001) {
		uint32_t code = inb(0x60);
		uint32_t val = inb(0x61);

		outb(0x61, val | 0x80); //tell i8259 that have finished
		outb(0x61, val);

		keyboard_event(code);
	}
	else if(tf->irq == 1014)
	{
	}
	else if(tf->irq == 0x80)
	{	
		
		if(tf->eax==sys_write) //1 is putc
		{
			if(tf->ebx==1) //standard output
			{
				printk((const char *)(tf->ecx));
			}
		}
		else if(tf->eax==sys_clock) //2 is time
		{
			if(tf->ebx==0) //get time
			{
				tf->eax=get_time();
			}
			else if(tf->ebx==1)
			{
				time_pop();
			}
		} 
		else if(tf->eax==sys_keyboard) //keyboard
		{
			if(tf->ebx==0) //get keycode
			{
				tf->eax=last_key_code();	
			}
			else if(tf->ebx==1) //reset
			{
				reset_last_key();
			}
		}
		else if(tf->eax==sys_video) //dispaly
		{
			my_memcpy((void *)video_start,(const void *)(tf->ebx),0x10000);
		}
		else if(tf->eax==sys_exit) 
		{
			process_exit();
		}
		else if(tf->eax==sys_pid)
		{
			tf->eax=getpid();
		}
		else if(tf->eax == sys_sleep)
		{	
			int time=get_time();
			asm volatile("sti");
			while(get_time()<(time+tf->ebx));
			
		}
	}
	else {
		print_tf(tf);
		printk("shoud not reach this, unhandled case%d\n",tf->irq);
	}
	
}
