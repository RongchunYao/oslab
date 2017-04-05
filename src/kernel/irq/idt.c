#include "../include/x86.h"
#include "../include/intr.h"

#define INTERRUPT_GATE_32 0xE
#define TRAP_GATE_32 0xF

#define TRUE 1
#define FALSE 0

struct GateDescriptor idt[NR_IRQ];

static void
set_intr(struct GateDescriptor *ptr, uint32_t selector, uint32_t offset, uint32_t dpl) {
	ptr->offset_15_0 = offset & 0xFFFF;
	ptr->segment = selector << 3;
	ptr->pad0 = 0;
	ptr->type = INTERRUPT_GATE_32;
	ptr->system = FALSE;
	ptr->privilege_level = dpl;
	ptr->present = TRUE;
	ptr->offset_31_16 = (offset >> 16) & 0xFFFF;
}

static void
set_trap(struct GateDescriptor *ptr, uint32_t selector, uint32_t offset, uint32_t dpl) {
	ptr->offset_15_0 = offset & 0xFFFF;
	ptr->segment = selector << 3;
	ptr->pad0 = 0;
	ptr->type = TRAP_GATE_32;
	ptr->system = FALSE;
	ptr->privilege_level = dpl;
	ptr->present = TRUE;
	ptr->offset_31_16 = (offset >> 16) & 0xFFFF;
}

void irq0(); //timer
void irq1(); //keyboard
void syscall(); //syscall

void irq_empty(); //to make sure that each have an handle function

void init_idt() {
	int i;
	for (i = 0; i < NR_IRQ; i ++) {
		set_trap(idt + i, SEG_KERNEL_CODE, (uint32_t)irq_empty, DPL_KERNEL);
	}

//add from here
	set_intr(idt + 32, SEG_KERNEL_CODE, (uint32_t)irq0, DPL_KERNEL);
	set_intr(idt + 33, SEG_KERNEL_CODE, (uint32_t)irq1, DPL_KERNEL);
	set_trap(idt + 0x80, SEG_KERNEL_CODE, (uint32_t)syscall, DPL_KERNEL);
	save_idt(idt, sizeof(idt));
}
















