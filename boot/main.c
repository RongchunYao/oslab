#define SECTSIZE 512
#define uint8_t unsigned char
#define uint32_t unsigned int
#include "boot.h"

void waitdisk()
{
	 while ((inb(0x1F7) & 0xC0) != 0x40);
}

void
readsect(void *dst, uint32_t offset)
{
    // wait for disk to be ready
    waitdisk();
    outb(0x1F2, 1);     // count = 1
    outb(0x1F3, offset);    //address = offset | 0xe0000000
    outb(0x1F4, offset >> 8);
    outb(0x1F5, offset >> 16);
    outb(0x1F6, (offset >> 24) | 0xE0);
    outb(0x1F7, 0x20);  // cmd 0x20 - read sectors
    // wait for disk to be ready
    waitdisk();
    // read a sector
    insl(0x1F0, dst, SECTSIZE/4);
}
void read_disk(uint8_t * paddr, int count, int offset)
{
	uint8_t * obj_paddr;
	obj_paddr = paddr+count;
	paddr-=offset %SECTSIZE;
	int num=(offset/SECTSIZE)+1;
	while(paddr<obj_paddr)
	{
		readsect(paddr,num);
		paddr+=SECTSIZE; 
		num++;
	}
}
void boot_main()
{
	struct ELFHeader *elf;
	struct ProgramHeader *ph;
	elf=(struct ELFHeader*) 0x8000;
	read_disk((uint8_t *)elf,4096,0);
	ph = (struct ProgramHeader*)((uint8_t*)elf+elf->phoff);
	int i;
	uint8_t * temp1,* temp2;
	for(i=0;i<(elf->phnum);i++)
	{
		temp2=(uint8_t *)ph->paddr;
		read_disk(temp2,ph->filesz,ph->off);
		for(temp1=temp2+(ph->filesz);temp1<(temp2+ph->memsz);*temp1=0,temp1++);
	}
	((void(*)(void))elf->entry)();
	
}










