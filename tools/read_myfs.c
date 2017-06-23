#include<stdio.h>
#include<string.h>
#define blocksz 4096
#define maxdir 20
#define nrblock  32768
#define nrinode 32768
#define inodemapoffset 0+512
#define blockmapoffset 32768+512
#define inodeoffset (65536+512)
#define inodesz 128
#define blockoffset  0x410000+512
#define blocksz 4096

int nr_block;
int nr_names;
char names[maxdir][32];

typedef struct 
{
char name[56];
unsigned int  i_size;
unsigned int i_type;
unsigned int block[16];
}inode;

int block[1024];
int block2[1024];
int cutname(char *src)
{
	int f;
	int valid=0; 
	int i=0;nr_names=0;
	int bflag=0;
	while(src[i]!=0)
	{
		f=0;
		valid=0;
		while(1)
		{	
			if(f>31) return -1;			
			if(src[i]=='/') 
			{
				if(bflag==1) {i++; continue;}
				valid=1;
				names[nr_names][f]='/';
				bflag=1;
				f++;
				i++;
				break;
			}
			else if(src[i]==0)
			{
				if(bflag==1) break;
				names[nr_names][f]='/';
				f++;
				break;
			}
			else 
			{
				bflag=0;
				valid=1;
				names[nr_names][f]=src[i];
			}
			f++;
			i++;
		}
		names[nr_names][f]=0;
		if(valid) nr_names++;
		if(nr_names>=maxdir) return -1;
	}
	if(nr_names==0) return -1;
	else return 0;
}

inode tmpnode;

int main(int argc, char ** argv)
{
	char filename[32];
	if(argc<=1)
	{
		printf("too few args\n");
		return 0;
	}
	else
	{
		strcpy(filename,argv[1]);
	}
	cutname(filename);
	int tmp=0;
	for(;names[nr_names-1][tmp]!=0;tmp++);
	names[nr_names-1][tmp-1]=0;
	
	FILE * fd;
	fd=fopen(names[nr_names-1],"w+");
	if(!fd) {printf("can not open the file!\n"); return 0;}
	FILE * fd2;
	fd2=fopen("../image","rb+");

	int cur=0;
	int filenode;
	int i;
	int flag;
	for(i=1;i<nr_names;i++)
	{
		fseek(fd2,cur*inodesz+inodeoffset,SEEK_SET);		
		fread((void *)&tmpnode,sizeof tmpnode,1,fd2);
		fseek(fd2,(tmpnode.block[0])*blocksz+blockoffset,SEEK_SET);
		fread((void *)&block,sizeof block,1,fd2);
		int child_num=tmpnode.i_size;
		int j;
		flag=0;
		for(j=0;j<child_num;j++)
		{	
			fseek(fd2,block[j]*inodesz+inodeoffset,SEEK_SET);
			fread((void *)&tmpnode,sizeof tmpnode,1,fd2);	
			//printf(" names[i]%s\n",names[i]);
			if(strcmp(names[i],tmpnode.name)!=0) {continue; }
			else {
			printf("size is %d, tmpnodename %s\n",tmpnode.i_size,tmpnode.name);
				 cur=block[j];  flag=1; break;}
		}
		if(j==child_num&&flag==0)  {printf("no such a file \n"); return 0;}
	}
	filenode=cur;
	fseek(fd2,filenode*inodesz+inodeoffset,SEEK_SET);
	fread((void *)&tmpnode,sizeof tmpnode,1,fd2);
	unsigned int size=tmpnode.i_size;	
	int x;
	x=0;
	if(size<=4096*10)
	{
		while(size)
		{
			if(size>=4096){
			fseek(fd2,tmpnode.block[x]*blocksz+blockoffset,SEEK_SET);
			fread((void *)block,blocksz,1,fd2);
			fwrite((void *)block,blocksz,1,fd);
			size-=4096;
			}
		
			else
			{
				fseek(fd2,tmpnode.block[x]*blocksz+blockoffset,SEEK_SET);
				fread((void *)block,blocksz,1,fd2);
				fwrite((void *)block,size,1,fd);
				size=0;
			}
			x++;
		}
	}
	else
	{
		for(x=0;x<10;x++)
		{
			fseek(fd2,tmpnode.block[x]*blocksz+blockoffset,SEEK_SET);
			fread((void *)block,blocksz,1,fd2);
			fwrite((void *)block,blocksz,1,fd);
			size-=4096;
		}
		fseek(fd2,tmpnode.block[10]*blocksz+blockoffset,SEEK_SET);
		fread((void *)block2,blocksz,1,fd2);
		x=0;
		while(size)
		{
			if(size>=4096){
				fseek(fd2,block2[x]*blocksz+blockoffset,SEEK_SET);
				fread((void *)block,blocksz,1,fd2);
				fwrite((void *)block,blocksz,1,fd);
				size-=4096;
			}
			else 
			{
				fseek(fd2,tmpnode.block[x]*blocksz+blockoffset,SEEK_SET);
				fread((void *)block,blocksz,1,fd2);
				fwrite((void *)block,size,1,fd);
				size=0;
			}
			x++;
		}

	}
	
	fclose(fd);
	fclose(fd2);
	return 0;
	
}
