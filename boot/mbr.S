.code16

#define MAKE_SEG_DESC(type,base,lim)                        \
		.word (((lim) >> 12) & 0xffff), ((base) & 0xffff);      \
		.byte (((base) >> 16) & 0xff), (0x90 | (type)),         \
		(0xC0 | (((lim) >> 28) & 0xf)), (((base) >> 24) & 0xff)

.globl start
.globl boot_main

start:  
	cli

	movw    $0x13, %ax        
	int     $0x10             

	mov $0x13, %ah
	mov $0x01, %al
	mov $0x00, %bh
	mov $0x4f, %bl
	mov $(end-str), %cx
	mov $str, %dx
	mov %dx, %bp
	mov $0x00, %dh
	mov $0x00, %dl
	int $0x10

seta20.1:
	inb $0x64,%al
	testb $0x2,%al
	jnz seta20.1
	movb $0xd1,%al
	outb %al,$0x64

seta20.2:
	inb $0x64,%al
	testb $0x2,%al
	jnz seta20.2	
	movb $0xdf,%al
	outb %al,$0x60

load:
	lgdt   gdtdesc
	movl    %cr0, %eax       
	orl     $0x1, %eax
	movl    %eax, %cr0
	ljmp    $0x8, $next

.code32
next:
	movw  $0x10,%ax
	movw %ax,%ds
	movw %ax,%es
	movw %ax,%ss	
	movl $0x80000, %esp 
	call boot_main

loop:
	jmp loop 

.p2align 2  	
gdt:
		MAKE_SEG_DESC(0x0,0x0,0x0)
		MAKE_SEG_DESC(0xa, 0x0, 0xffffffff)  # code
		MAKE_SEG_DESC(0x2, 0x0, 0xffffffff)  # data

gdtdesc:                    
		.word   (gdtdesc - gdt - 1)    # limit = sizeof(gdt) - 1
		.long   gdt         # address of GDT
str:
	.ascii "Hello,World!"
end:
