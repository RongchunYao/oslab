#include"include/mmu.h"
#include"include/type.h"
#include"include/x86.h"

SegDesc gdt[NR_SEGMENT];
TSS tss;
static int seg_num;
uint16_t tr;
extern void serial_out(char);

static inline void
write_gdtr(void *addr, uint32_t size) {
	static volatile uint16_t data[3];
	data[0] = size - 1;
	data[1] = (uint32_t)addr;
	data[2] = ((uint32_t)addr) >> 16;
	asm volatile("lgdt (%0)" : : "r"(data));
}

void set_tss(uint32_t esp)
{
	tss.esp0=esp;
}

void Makegdt(uint32_t limit,uint32_t base,int type,int dpl,int num)
{
	gdt[num].limit_15_0 = (limit>>12)&0xffff;
	gdt[num].base_15_0 = ((base) & 0xffff);
	gdt[num].base_23_16 = ((base) >> 16) & 0xff;
	gdt[num].type = type;
	gdt[num].segment_type=1;
	gdt[num].privilege_level=dpl;
	gdt[num].present=1;
	gdt[num].limit_19_16=(limit >> 28)&0xf;
	gdt[num].soft_use=0;
	gdt[num].operation_size=0;
	gdt[num].pad0=1;
	gdt[num].granularity=1;
	gdt[num].base_31_24=((base) >> 24) & 0xff;
}

void Maketss(uint32_t limit,uint32_t base,int type,int dpl,int num)
{
	gdt[num].limit_15_0 = (limit)&0xffff;
	gdt[num].base_15_0 = ((base) & 0xffff);
	gdt[num].base_23_16 = ((base) >> 16) & 0xff;
	gdt[num].type = type;
	gdt[num].segment_type=0;
	gdt[num].privilege_level=dpl;
	gdt[num].present=1;
	gdt[num].limit_19_16=(limit >> 16)&0xf;
	gdt[num].soft_use=0;
	gdt[num].operation_size=0;
	gdt[num].pad0=1;
	gdt[num].granularity=1;
	gdt[num].base_31_24=((base) >> 24) & 0xff;
}


void init_seg()
{
	seg_num=0;
	Makegdt(0,0,0,0,0); seg_num++;
	Makegdt(0xffffffff,0,0xa,0,seg_num); seg_num++;  //kernel code
	Makegdt(0xffffffff,0,0x2,0,seg_num); seg_num++;  //kernel data
	Makegdt(0x400000,0,0xa,3,seg_num); seg_num++;  //user code
	Makegdt(0x400000,0,0x2,3,seg_num); seg_num++;  //user data
	tss.esp0=0x280000;
	tss.ss0=0x10;
	Maketss(0xffffffff,(uint32_t)(&tss),0x9,0,seg_num); seg_num++; //for tss
	tr=(5<<3)|3;
	asm volatile("movw $0x10,%%ax"::);
	asm volatile("movw %%ax,%%ds"::);
	asm volatile("movw %%ax,%%es"::);
	asm volatile("movw %%ax,%%ss"::);
	write_gdtr(gdt, sizeof gdt); 
	ltr(tr);
}




