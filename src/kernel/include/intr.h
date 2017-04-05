#ifndef _INTR_H_
#define _INTR_H_ 

#include "type.h"

#define DPL_KERNEL              0
#define DPL_USER                3
 
#define SEG_KERNEL_CODE         1 
#define SEG_KERNEL_DATA         2   

#define NR_IRQ    256

struct GateDescriptor {
	uint32_t offset_15_0      : 16;
	uint32_t segment          : 16;
	uint32_t pad0             : 8;
	uint32_t type             : 4;
	uint32_t system           : 1;
	uint32_t privilege_level  : 2;
	uint32_t present          : 1;
	uint32_t offset_31_16     : 16;
};

struct TrapFrame {
	uint32_t edi, esi, ebp, xxx, ebx, edx, ecx, eax;
	int32_t irq;
	uint32_t error_code;
};

static inline void
wait_for_interrupt() {
	asm volatile("hlt");
}

static inline void
save_idt(void *addr, uint32_t size) {
	static volatile uint16_t data[3];
	data[0] = size - 1;
	data[1] = (uint32_t)addr;
	data[2] = ((uint32_t)addr) >> 16;
	asm volatile("lidt (%0)" : : "r"(data));
}

static inline void
enable_interrupt(void) {
	asm volatile("sti");
}


static inline void
disable_interrupt(void) {
	asm volatile("cli");
}




#endif
