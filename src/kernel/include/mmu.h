#ifndef _MMU_H_
#define _MMU_H_
#include"type.h"

#define NR_SEGMENT 		16
#define DPL_KERNEL              0
#define DPL_USER                3

#define SEG_NULL                0 
#define SEG_KERNEL_CODE         1 
#define SEG_KERNEL_DATA         2
#define SEG_USER_CODE           3
#define SEG_USER_DATA 		4
#define SEG(cs,dpl) ((cs<<3)|dpl)

#define KSTACK_SIZE 4096
#define NR_PCB 60
#define USER_ESP 0x60fff0
#define USER_STK_START 0x600000
#define USER_STK_SIZE 0x10000
#define USER_FLAG 0x202
#define PTE_ATTR(pte) (pte&0xFFF)
#define KERNBASE 0xc0000000
#define NPDENTRIES 1024
#define NPTENTRIES 1024
#define PGSIZE 4096
#define PGSHIFT 12
#define PTXSHIFT 12
#define PDXSHIFT 22
#define PTSHIFT 22
#define PTSIZE (PGSIZE* NPTENTRIES)
#define PTE_P 0x1
#define PTE_W 0x2
#define PTE_U 0x4
#define PTE_PWT 0x8 //write through
#define PTE_PCD 0x10 //cache-Disable
#define PTE_A 0x20
#define PTE_D 0x40
#define PTE_PS 0x80
#define PTE_G  0100
#define PTE_ADDR(pte) ((physaddr_t) (pte) & ~0xFFF)

#define PHY_MEM (128*1024*1024)
#define PGNUM(la)   (((uintptr_t)(la))>>PTXSHIFT)
#define PDX(la)     ((((uintptr_t)(la)) >> PDXSHIFT) & 0x3FF)
#define PTX(la)    ((((uintptr_t)(la)) >> PTXSHIFT) & 0x3FF)
#define PGOFF(la)    (((uintptr_t) (la) & 0xFFF)
#define PGADDR(d,t,o) ((void *) ((d)<<PDXSHIFT | (t) <<PTXSHIFT | (o)))
#define VA_MEM 0xffffffff


typedef struct SegmentDescriptor {
	uint32_t limit_15_0          : 16;
	uint32_t base_15_0           : 16;
	uint32_t base_23_16          : 8;
	uint32_t type                : 4;
	uint32_t segment_type        : 1;
	uint32_t privilege_level     : 2;
	uint32_t present             : 1;
	uint32_t limit_19_16         : 4;
	uint32_t soft_use            : 1;
	uint32_t operation_size      : 1;
	uint32_t pad0                : 1;
	uint32_t granularity         : 1;
	uint32_t base_31_24          : 8;
} SegDesc;

typedef struct GDTR_reg {	
	uint16_t limit;
	uint32_t base;
	
} GDTR;

typedef struct TASK_Des{
	uint32_t unused1;
	uint32_t esp0;
	uint16_t ss0;
	uint16_t unused2;
	long long a;
	long long b;
	long long c;
	long long d;
	long long e;
	long long f;
	long long g;
	long long h;
	long long i;
	long long j;
}TSS;


#endif
