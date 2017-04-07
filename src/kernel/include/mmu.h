#ifndef _MMU_H_
#define _MMU_H_

#define NR_SEGMENT 		16
#define DPL_KERNEL              0
#define DPL_USER                3

#define SEG_NULL                0 
#define SEG_KERNEL_CODE         1 
#define SEG_KERNEL_DATA         2

#include"type.h"

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
