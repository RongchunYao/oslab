#ifndef _STRING_H_
#define _STRING_H_

#include "type.h"
#include "print.h"
int my_strlen(const char * a)
{
	int i=0;
	int sum=0;
	while(a[i])
	{
		sum++;
		i++;
	}
	return sum;;
}

int my_strcmp(const char * a,const char *b)
{
	int ans=0;
	int i=0;
	while(a[i]&&b[i])
	{
		if(a[i]<b[i]) { ans=-1; break;}
		else if(a[i]>b[i]) {ans=1; break;}
		i++;
	}
	if(a[i]==0 &&b[i]!=0) ans=-1;
	if(a[i]!=0 &&b[i]==0) ans=1;
	return ans;
}

int my_strcpy(char * dest, const char * src, size_t num)
{
	int sum=0;
	int to=num;
	while(to--)
	{
		dest[sum]=src[sum];
		if(src[sum]==0) break;
		sum++;
	}
	dest[sum]=0;
	return sum;
}

#endif 
