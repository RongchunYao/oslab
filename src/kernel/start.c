#include"include/mmu.h"
#include"include/type.h"
#include"include/x86.h"

SegDesc gdt[NR_SEGMENT];
TSS tss;
static int seg_num;
static uint16_t tr;
GDTR gdtr;

void Makegdt(uint32_t limit,uint32_t base,int type,int dpl,int num)
{
	gdt[num].limit_15_0 = (limit>>12)&0xffff;
	gdt[num].base_15_0 = ((base) & 0xffff);
	gdt[num].base_23_16 = ((base) >> 16) & 0xff;
	gdt[num].type = type & 0xf;
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


void init_seg()
{
	seg_num=0;
	Makegdt(0,0,0,0,0); seg_num++;
	Makegdt(0x80000,0,0xa,0,seg_num); seg_num++;  //kernel code
	Makegdt(0x80000,0,0x2,0,seg_num); seg_num++;  //kernel data
	Makegdt(0xffffffff,0,0xa,3,seg_num); seg_num++;  //user code
	Makegdt(0xffffffff,0,0x2,3,seg_num); seg_num++;  //user data
	Makegdt(0xffffffff,(uint32_t)(&tss),0,0,seg_num); seg_num++; //for tss
	gdtr.limit=seg_num*8-1;
	void * gdt_addr= gdt;
	gdtr.base=(uint32_t)gdt_addr;
	tr=5;
	tss.esp0=0x180000;
	tss.ss0=0x10;
	lgdt((void *)(&gdtr));
	ltr(tr);
}




