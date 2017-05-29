#include"type.h"
#include "syslib.h"
#include "string.h"

#define max 10

char a[]="Hi I am producer";
char b[]="Hi I am consumer";

sem_t product;
sem_t empty;


void * producer(void * arg)
{	
	while(1)
	{
		if(sem_wait(&empty)==0)
		{
			sem_post(&product);
			print("%s ,I produce a product \n",arg);
		}
	}
	my_exit();
	return (void *) 0;
}

void * consumer(void * arg)
{	
	while(1)
	{
		if(sem_wait(&product)==0)
		{
			sem_post(&empty);
			print("%s ,I consume a product \n",arg);
		}
	}
	my_exit();
	return (void *) 0;
}

int main()
{	
	if(sem_init(&product,0)<0) {   print("sem init fail\n");  while(1);} 
	if(sem_init(&empty,max)<0) {   print("sem init fail\n");  while(1);} 
	my_pthread(producer,(void *) a);
	my_pthread(consumer,(void *) b);
	my_exit();
	return 0;
}
