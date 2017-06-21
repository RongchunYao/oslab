#include<stdio.h>
#include<string.h>
#define nrblock  32768
char buff[4096];
int main()
{

FILE *fd;
fd=fopen("image","r");
FILE *fd2;
fd2=fopen("disk","w+");
fseek(fd,0x410000+512+0x1b000,SEEK_SET);
int i=0;
for(i=0;i<nrblock;i++)
{
fread((void *)buff,4096,1,fd);
fwrite((void *)buff,4096,1,fd2);
}
fclose(fd);
fclose(fd2);
}
