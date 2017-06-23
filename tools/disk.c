#include<stdio.h>
#include<string.h>
#define inodesz 128 
#define direntrysz 4
#define nrinode 32768
#define nrblock 32768
#define kernelsz 102400
#define blocksz 4096
typedef unsigned int uint32_t;

struct inode
{
	char name[56];
	uint32_t i_size;
	uint32_t i_type;
	uint32_t block[16];
};

int my_index;

struct inode c;
struct inode d;

char a=1;
char b=0;
int main()
{
	memset(&d,0,sizeof d);
	FILE * fd=fopen("inodemap.bin","w+");
	fwrite((void *)&a,sizeof a,1,fd);
	fwrite((void *)&a,sizeof a,1,fd);
	fwrite((void *)&a,sizeof a,1,fd);
	int i;
	for(i=3;i<nrinode;i++)
	{
		fwrite((void *)&b,sizeof b,1,fd);
	}
	fclose(fd);
	
	FILE * fd2=fopen("blockmap.bin","w+");
	for(i=0;i<kernelsz/blocksz+2;i++)
	{
		fwrite((void *)&a,sizeof a,1,fd);
	}
	for(i=kernelsz/blocksz+2;i<nrblock;i++)
	{
		fwrite((void *)&b,sizeof b,1,fd);
	}
	fclose(fd2);
	
	FILE * fd3=fopen("inode.bin","w+");
	strcpy(c.name,"/");
	c.i_size=2;
	c.i_type=0;
	c.block[0]=0;
	fwrite((void *)(&c),sizeof(c),1,fd3);
	strcpy(c.name,"kernel");
	c.i_size=102400;
	c.i_type=1;
	c.block[0]=1;
	c.block[1]=2;
	c.block[2]=3;
	c.block[3]=4;
	c.block[4]=5;
        c.block[5]=6;
        c.block[6]=7;
        c.block[7]=8;
	c.block[8]=9;
	c.block[9]=10;
	c.block[10]=26;
	fwrite((void *)(&c),sizeof(c),1,fd3);
	c.i_size=0;
	c.i_type=0;
	strcpy(c.name,"load_file/");
	fwrite((void *)(&c),sizeof(c),1,fd3);
	for( i=3;i<nrinode;i++)
	{
		fwrite((void*)(&d),sizeof d,1,fd3);
	}
	fclose(fd3);
	
	FILE * fd4=fopen("firstblock.bin","w+");
	my_index=1;
	fwrite((void *)(&my_index),sizeof my_index,1,fd4);
	my_index=2;
	fwrite((void *)(&my_index),sizeof my_index,1,fd4);
	my_index=0;
	for(i=2;i<blocksz/direntrysz;i++)
{	fwrite((void *)(&my_index),sizeof my_index,1,fd4);}
	fclose(fd4);
	
	FILE *fd5= fopen("t27block.bin","w+");
	for(my_index=11;my_index<=25;my_index++)
	{
		fwrite((void *)(&my_index),sizeof my_index,1,fd5);
	}	
	my_index=0;
	for(i=16;i<blocksz/4;i++)
	fwrite((void *)(&my_index),sizeof my_index,1,fd5);
	fclose(fd5);
	return 0;
	
		
	

}


	

