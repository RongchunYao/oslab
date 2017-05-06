#include "mmu.h"
#include "type.h"
#define NR_PAGE 10
#define	RELOC(x) ((x) - KERNBASE)
extern pte_t entry_pgtable[NPTENTRIES];

int use[NR_PAGE];
int use_pte[32];
__attribute__((__aligned_(PGSIZE))) 
 pte_t pool[32][NPTENTRIES];
__attribute__((__aligned_(PGSIZE)))
  pde_t PGDIR[NR_PAGE][NPDENTRIES];

void init()
{
	int i;int j;
	for(i=0;i<NR_PAGE;i++) 
	{
		use[i]=0;
		PGDIR[i][0]=((uintptr_t)entry_pgtable - KERNBASE) + PTE_P ;
		PGDIR[i][KERNBASE>>PDXSHIFT]=((uintptr_t)entry_pgtable - KERNBASE) + PTE_P + PTE_W;
	}
	for(i=1;i<32;i++)
	{
		for(j=0;j<NPTENTRIES;j++)
		{
			pool[i][j]=(i<<PDXSHIFT)+(j<<PTXSHIFT)+PTE_P+PTE_W+PTE_U;
		}
	}
	for(j=1;j<NPTENTRIES;j++)
	{
		use_pte[j]=0;
	}
	use_pte[0]=1;
}

int get_page()
{
	int i; 
	for(i=0;i<NR_PAGE;i++) 
	{
		if(use[i]==0) break;
	}
	if(i==NR_PAGE){ printk("no more page\n"); while(1); }
	else 
	{
		use[i]=1; return i;	
	}
	
}

void free_page(int page)
{
	use[page]=0;
}

void * getpde(int page)
{	
	return (void*) RELOC(&PGDIR[page][0]);
}

void  make_page(int page,uint32_t addr,uint32_t needsize)
{
	int ans=(needsize+(addr%0x400000))/0x400000;
	if(needsize%0x400000) ans++;
	int i;
	for(i=1;i<32;i++)
	{
		if(use_pte[i]==0) { ans--; use_pte[i]=1; PGDIR[page][addr/0x400000]=(uint32_t)(&pool[i])+PTE_P + PTE_W+PTE_U; addr+=0x400000; }
		if(ans==0) break;
	}
	if(ans) {printk("not enough memory\n"); while(1); }	
}

