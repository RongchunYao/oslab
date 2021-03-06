#include "x86.h"
#include "intr.h"
#include "mmu.h"
#include "type.h"
#include "sem.h"
#define video_start 0xc00a0000
#define sys_write 1
#define sys_clock 2
#define sys_keyboard 3
#define sys_video  4
#define sys_exit 5
#define sys_pid 6
#define sys_sleep 7
#define sys_fork 8
#define sys_pthread 9
#define sys_sem_init 10
#define sys_sem_destroy 11
#define sys_sem_wait 12
#define sys_sem_post 13
#define sys_sem_trywait 14

extern void print_tf(struct TrapFrame *);
extern void timer_event();
extern void keyboard_event(int);
extern void serial_out(char);
extern int get_time();
extern void time_pop();
extern void reset_last_key();
extern int last_key_code();
extern void serial_out(char);
extern void process_exit();
extern void my_sleep(uint32_t,struct TrapFrame *);
extern void time_treat(struct TrapFrame *);
extern int getpid();
int pthread_create(void *, void *);
int my_fork(struct TrapFrame *);
void irq_handle(struct TrapFrame *tf)
{
	if (tf->irq == 1000) {
		timer_event();
		if(tf->cs==SEG(SEG_KERNEL_CODE,DPL_KERNEL)) return;
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
			my_sleep(tf->ebx,tf);
		}
		else if(tf->eax == sys_fork)
		{
			tf-> eax =my_fork(tf);
		}
		else if(tf->eax == sys_pthread)
		{
			tf->eax= pthread_create((void *)tf->ebx, (void *)tf->ecx);
		}
		else if(tf->eax == sys_sem_init)
		{
			tf->eax= sem_init((sem_t *)tf->ebx,tf->ecx);
		}
		else if(tf->eax ==sys_sem_destroy)
		{
			tf->eax= sem_destroy((sem_t *)tf->ebx);
		}
		else if(tf-> eax ==sys_sem_wait)
		{
			tf->eax= sem_wait((sem_t *)tf->ebx,tf);
		}
		else if(tf->eax == sys_sem_post)
		{
			tf->eax= sem_post((sem_t *)tf->ebx);
		}
		else if(tf->eax == sys_sem_trywait)
		{
			tf->eax= sem_trywait((sem_t *)tf->ebx);
		}
	}
	else {
		print_tf(tf);
		printk("shoud not reach this, unhandled case%d\n",tf->irq);
	}
	
}
