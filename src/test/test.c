#include"type.h"
#include "syslib.h"
#include "print.h"
#include "string.h"

int main()
{	
	char a[10];
	my_strcpy(a,"hell",10);
	int f=my_strcmp(a,"hel");
	print("ans is %d\n",f);
	my_exit();
	return 0;
}
