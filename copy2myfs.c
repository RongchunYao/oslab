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
FILE * fd;
FILE *fd2;
int nr_names;
char names[maxdir][32];

char blockmap[nrblock];
char inodemap[nrinode];

int get_free_inode()
{
	int i=0;
	for(i=0;i<nrinode;i++)
	{
		if(inodemap[i]==0){ 
		inodemap[i]=1; fseek(fd2,inodemapoffset,SEEK_SET);
		fwrite((void*)inodemap,sizeof inodemap,1,fd2); return i;}
	}
	return -1;

}

int get_free_block()
{
	int i=0;
	for(i=0;i<nrblock;i++)
	{
		if(blockmap[i]==0){ 
		blockmap[i]=1; 
		fseek(fd2,blockmapoffset,SEEK_SET);
		fwrite((void*)blockmap,sizeof blockmap,1,fd2); 
		return i;}
	}
	return -1;
}




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
	}
	if(nr_names==0||nr_names>=maxdir) return -1;
	else return 0;
}

inode tmpnode;

int main(int argc, char ** argv)
{
	char filename[32];
	char dirname[32];
	char buff[512];
	if(argc<=2)
	{
		printf("too few args\n");
		return 0;
	}
	else
	{
		strcpy(filename,argv[1]);
		strcpy(dirname,argv[2]);
	}
	cutname(dirname);
	
	fd=fopen(filename,"r");
	if(!fd) {printf("can not open the file!\n"); return 0;}
	fseek(fd,0L,SEEK_END);
	unsigned long long size;
	size=ftell(fd);
	nr_block=size/blocksz;	
	if(size%4096) nr_block++;
	printf("size is %llu\n",size);
	fd2=fopen("image","rb+");
	fseek(fd2,512,SEEK_SET);	
	fread((void *)inodemap,nrinode,1,fd2);
	fread((void *)blockmap,nrblock,1,fd2);

	int cur=0;
	int dirnode;
	int i;
	int flag;
	if(nr_names==1&&strcpy(names[0],"/")==0)  dirnode=0;
	else
	{
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
				//printf(" tmpnodename %s\n",tmpnode.name);
				if(strcmp(names[i],tmpnode.name)!=0) {continue; }
				else { cur=block[j];  flag=1; break;}
			}
			if(j==child_num&&flag==0)  {printf("no such a dir\n"); return 0;}
		}
	}
	dirnode=cur;
	printf("inode is %d\n",cur);
	fseek(fd2,cur*inodesz+inodeoffset,SEEK_SET);		
	fread((void *)&tmpnode,sizeof tmpnode,1,fd2);
	int index=get_free_inode();
	fseek(fd2,512,SEEK_SET);
	fwrite((void *) inodemap,sizeof inodemap,1,fd2);
	int nr=tmpnode.i_size;
	if(tmpnode.i_size>=1024) printf("can not support over 1024 files in one dir\n");
	tmpnode.i_size++;
	int blockindex=tmpnode.block[0];
	fseek(fd2,dirnode*inodesz+inodeoffset,SEEK_SET);
	fwrite((void *)&tmpnode,sizeof tmpnode,1,fd2);
	fseek(fd2,blockindex*blocksz+blockoffset,SEEK_SET);
	fread((void *)block,sizeof block,1,fd2);
	block[tmpnode.i_size-1]=index;
	fseek(fd2,blockindex*blocksz+blockoffset,SEEK_SET);
	fwrite((void *)block,blocksz,1,fd2);
	strcpy(tmpnode.name,filename);
	tmpnode.i_type=1;
	tmpnode.i_size=size;
	fseek(fd,0l,SEEK_SET);
	int counter=0;
	while(nr_block)
	{
		if(counter<=9){
		fread((void*)block,blocksz,1,fd);
		blockindex=get_free_block();
		tmpnode.block[counter]=blockindex;
		fseek(fd2,blockoffset+blocksz*blockindex,SEEK_SET);
		fwrite((void*)block,blocksz,1,fd2);}
		else
		{
			int seccounter=0;
			int secdir=get_free_block();
			tmpnode.block[counter]=secdir;
			while(nr_block)
			{
				blockindex=get_free_block();
				block2[seccounter]=blockindex;
				seccounter++;
				fread((void *) block,blocksz,1,fd);
				fseek(fd2,blockoffset+blocksz*blockindex,SEEK_SET);
				fwrite((void *)block,blocksz,1,fd2);
				nr_block--;
			}
			fseek(fd2,blockoffset+blocksz*secdir,SEEK_SET);
			fwrite((void *)block2,blocksz,1,fd2);
			break;
		}
		nr_block--;
		counter++;		
	}
	fseek(fd2,index*inodesz+inodeoffset,SEEK_SET);
	fwrite((void*)&tmpnode,sizeof tmpnode,1,fd2);	

	fclose(fd);
	fclose(fd2);
	return 0;
	
}
