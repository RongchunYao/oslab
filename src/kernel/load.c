#include"type.h"
#include"mmu.h"
#include"x86.h"
#include"pmap.h"
#define SECTSIZE 512

struct ELFHeader {
    unsigned int   magic;
    unsigned char  elf[12];
    unsigned short type;
    unsigned short machine;
    unsigned int   version;
    unsigned int   entry;
    unsigned int   phoff;
    unsigned int   shoff;
    unsigned int   flags;
    unsigned short ehsize;
    unsigned short phentsize;
    unsigned short phnum;
    unsigned short shentsize;
    unsigned short shnum;
    unsigned short shstrndx;
};

struct ProgramHeader {
    unsigned int type;
    unsigned int off;
    unsigned int vaddr;
    unsigned int paddr;
    unsigned int filesz;
    unsigned int memsz;
    unsigned int flags;
    unsigned int align;
};
void mm_alloc(pde_t *, uint32_t , size_t);


void waitdisk()
{
	 while ((inb(0x1F7) & 0xC0) != 0x40);
}

void
readsect(void *dst, uint32_t offset)
{
    waitdisk();
    outb(0x1F2, 1);    
    outb(0x1F3, offset);   
    outb(0x1F4, offset >> 8);
    outb(0x1F5, offset >> 16);
    outb(0x1F6, (offset >> 24) | 0xE0);
    outb(0x1F7, 0x20);  
    waitdisk();
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



uint32_t load(uint32_t offset,pde_t * pgdir)
{
	struct ELFHeader *elf;
	struct ProgramHeader *ph,*obj_ph;	
	elf=(struct ELFHeader*)0;
	mm_alloc(pgdir,0,4096);
	read_disk((uint8_t *)elf,4096,offset);
	ph = (struct ProgramHeader*)((uint8_t*)elf+elf->phoff);
	uint8_t * i;
	obj_ph=ph+elf->phnum;
	lcr3(PADDR(pgdir));
	for(;ph<obj_ph;ph++)
	{
		mm_alloc(pgdir,ph->paddr,ph->memsz);	
		read_disk((uint8_t*)(ph->paddr),ph->filesz,ph->off+offset);
		for(i=(uint8_t *)(ph->paddr+(ph->filesz));i<(uint8_t *)(ph->paddr+(ph->memsz));*i=0,i++);
	}
	mm_alloc(pgdir,USER_STK_START,USER_STK_SIZE);
	return (uint32_t)(elf->entry);
}


