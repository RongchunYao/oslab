#include"type.h"
int my_fork();
int getpid();
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
	print("my pid is %d\n",getpid());
	my_exit();
	return 0;
}
