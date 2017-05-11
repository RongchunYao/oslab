#include"type.h"
int my_fork();
void my_exit();
void my_sleep(uint32_t);
int main()
{	
	
	my_fork();
	my_fork();
	my_fork();
	my_fork();
	my_fork();
	my_sleep(1000);
	print("fuck you\n");
	my_exit();
	return 0;
}
