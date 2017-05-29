#include"type.h"
#include "syslib.h"
#include "string.h"
#include "random.h"

#define max 5

char a[]="Hi I am producer";
char b[]="Hi I am consumer1";
char b2[]="Hi I am consumer2";
sem_t full;
sem_t empty;
sem_t mutex;

int pointer=0;
int buf[max];

void * producer(void * arg)
{	
	while(1)
	{
		if(sem_wait(&empty)==0)
		{
			if(sem_wait(&mutex)==0)
			{
				sem_post(&full);
				buf[pointer]=rand()%100;
				print("%s ,I create %d\n",arg,buf[pointer]);
				pointer++;
			}
			sem_post(&mutex);
		}
	}
	my_exit();
	return (void *) 0;
}

void * consumer(void * arg)
{	
	while(1)
	{ 
		if(sem_wait(&full)==0)
		{
			if(sem_wait(&mutex)==0)
			{
				sem_post(&empty);
				pointer--;
				print("%s ,I consum %d\n",arg,buf[pointer]);
				
			}
			sem_post(&mutex);
		}
	}
	my_exit();
	return (void *) 0;
}

int main()
{	
	srand(0x1010);
	if(sem_init(&full,0)<0) {   print("sem init fail\n");  while(1);} 
	if(sem_init(&empty,max)<0) {   print("sem init fail\n");  while(1);}
	if(sem_init(&mutex,1)<0) {   print("sem init fail\n");  while(1);} 
	my_pthread(producer,(void *) a);
	my_pthread(consumer,(void *) b);
	my_pthread(consumer,(void *) b2);
	my_exit();
	return 0;
}
