#include "../type.h"


void __attribute__((__noinline__)) 
print(const char *ctl, ...) {
	asm volatile ("movl %0,%%ecx"::"r"(ctl));
	asm volatile ("movl $1,%%eax"::);
	asm volatile ("movl $1,%%ebx"::);
	asm volatile ("int $0x80"::);
}

void my_memcpy(void *dest, const void *src, size_t size) {
	asm volatile ("cld; rep movsb" : : "c"(size), "S"(src), "D"(dest));
}

void my_memset(void *dest, int data, size_t size) {
	asm volatile ("cld; rep stosb" : : "c"(size), "a"(data), "D"(dest));
}
