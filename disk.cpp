#include<fstream>
#include<iostream>
#include<string.h>
#define inodesz 128 
#define direntrysz 4
#define nrinode 32768
#define nrblock 32768
#define kernelsz 102400
#define blocksz 4096
typedef unsigned int uint32_t;
using namespace std;

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
	ofstream of("inodemap.bin",ios::binary|ios::out);
	of.write(&a,sizeof a);
	of.write(&a,sizeof a);
	for(int i=2;i<nrinode;i++)
	{
		of.write(&b,sizeof b);
	}
	of.close();
	
	ofstream of2("blockmap.bin",ios::binary|ios::out);
	for(int i=0;i<kernelsz/blocksz+2;i++)
	{
		of2.write(&a,sizeof a);
	}
	for(int i=kernelsz/blocksz+2;i<nrblock;i++)
	{
		of2.write(&b,sizeof b);
	}
	of2.close();

	ofstream of3("inode.bin",ios::binary|ios::out);	
	strcpy(c.name,"/");
	c.i_size=3;
	c.i_type=0;
	c.block[0]=1;
	of3.write((char *)(&c),sizeof(c));
	strcpy(c.name,"kernel/");
	c.i_size=102400;
	c.i_type=0;
	c.block[0]=2;
	c.block[1]=3;
	c.block[2]=4;
	c.block[3]=5;
	c.block[4]=6;
        c.block[5]=7;
        c.block[6]=8;
        c.block[7]=9;
	c.block[8]=10;
	c.block[9]=11;
	c.block[10]=27;
	of3.write((char *)(&c),sizeof(c));	
	for(int i=2;i<nrinode;i++)
	{
		of3.write((char*)(&d),sizeof d);
	}
	of3.close();	

	ofstream of4("firstblock.bin",ios::binary|ios::out);
	my_index=0;
	of4.write((char *)(&my_index),sizeof my_index);

	my_index=1;
	of4.write((char *)(&my_index),sizeof my_index);
	my_index=2;
	of4.write((char *)(&my_index),sizeof my_index);
	my_index=0;
	for(int j=3;j<blocksz/direntrysz;j++)
{	of4.write((char *)(&my_index),sizeof my_index);}
	of4.close();

	ofstream of5("t27block.bin",ios::out|ios::binary);
	for(my_index=12;my_index<=26;my_index++)
	{
		of5.write((char *)(&my_index),sizeof my_index);
	}	
	my_index=0;
	for(int j=15;j<blocksz/4;j++)
	of5.write((char *)(&my_index),sizeof my_index);
	of5.close();

	return 0;
}
