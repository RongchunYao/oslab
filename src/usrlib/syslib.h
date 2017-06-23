#ifndef syslib_H_
#define syslib_H_
#include"type.h"

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2
#define fail_open 0
#define success_open 1


typedef struct
{
	int inode_index;
	int offset;
	int success;

}FILE;

int getpid();
void my_sleep(int);
void my_exit();
int my_fork();
int my_pthread(void * , void * );
int sem_init(sem_t *, uint32_t);
int sem_destroy(sem_t * );
int sem_wait(sem_t *);
int sem_post(sem_t *);
int sem_trywait(sem_t *);
FILE * open(char *);
int lseek( FILE *, int , int );
int read(FILE *,uint8_t *,int);
int write(FILE *,uint8_t * ,int);
int close(FILE *);	
int open_check(FILE *);


#endif
