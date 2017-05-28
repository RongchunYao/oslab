#ifndef _TYPE_H_
#define _TYPE_H_

typedef int bool;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef unsigned short uint16_t;
typedef          short int16_t;
typedef unsigned char  uint8_t;
typedef          char  int8_t;
typedef int size_t;
typedef unsigned long long  uint64_t;
typedef long long int64_t;
typedef  uint32_t pte_t;
typedef  uint32_t uintptr_t;
typedef  uint32_t pde_t;
typedef  uint32_t physaddr_t;
void printk(const char *ctl, ...);
void my_memcpy(void *, const void *,  size_t) ;
void my_memset(void *, int, size_t);

typedef struct 
{
	int val;
	int present;
	int wait[10];
	int nr_wait;
}sem_t;

#endif
