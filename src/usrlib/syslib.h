#ifndef syslib_H_
#define syslib_H_
#include"type.h"

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


#endif
