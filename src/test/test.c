#include"type.h"
#include "syslib.h"
#include "string.h"

char a[]="fuck you bitch";
char b[]="fuck you damn bitch";

sem_t sem;

void * fuck(void * arg)
{	
	sem_wait(&sem);
	sem_wait(&sem);
	print("%s\n",(char *)arg);
	sem_post(&sem);
	my_exit();
	return (void *) 0;
}

void * fuck2(void * arg)
{	
	sem_wait(&sem);
	print("%s\n",(char *)arg);
	sem_post(&sem);
	my_exit();
	return (void *) 0;
}

int main()
{	
	sem_init(&sem,1);
	my_pthread(fuck,(void *) a);
	//my_pthread(fuck,(void *) b);
	my_exit();
	return 0;
}
