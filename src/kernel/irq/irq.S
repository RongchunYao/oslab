.code32
#-----|-----entry--------|-errorcode--|-----id-----|---handler---|
.globl vec0;    vec0:  cli; pushl $0;  pushl    $0; jmp asm_do_irq
.globl vec1;    vec1:  cli; pushl $0;  pushl    $1; jmp asm_do_irq
.globl vec2;    vec2:  cli; pushl $0;  pushl    $2; jmp asm_do_irq
.globl vec3;    vec3:  cli; pushl $0;  pushl    $3; jmp asm_do_irq
.globl vec4;    vec4:  cli; pushl $0;  pushl    $4; jmp asm_do_irq
.globl vec5;    vec5:  cli; pushl $0;  pushl    $5; jmp asm_do_irq
.globl vec6;    vec6:  cli; pushl $0;  pushl    $6; jmp asm_do_irq
.globl vec7;    vec7:  cli; pushl $0;  pushl    $7; jmp asm_do_irq
.globl vec8;    vec8:  cli; pushl $0;  pushl    $8; jmp asm_do_irq
.globl vec9;    vec9:  cli; pushl $0;  pushl    $9; jmp asm_do_irq
.globl vec10;   vec10: cli; pushl $0;  pushl   $10; jmp asm_do_irq
.globl vec11;   vec11: cli; pushl $0;  pushl   $11; jmp asm_do_irq
.globl vec12;   vec12: cli; pushl $0;  pushl   $12; jmp asm_do_irq
.globl vec13;   vec13: cli; pushl $0;  pushl   $13; jmp asm_do_irq
.globl vec14;   vec14: cli; pushl $0;  pushl   $14; jmp asm_do_irq

.globl irq0;    irq0:  cli;  pushl $0;    pushl $1000; jmp asm_do_irq  #timer
.globl irq1;    irq1:  cli;  pushl $0;    pushl $1001; jmp asm_do_irq  #keyboard
.globl syscall; syscall: cli; pushl $0;    pushl $0x80; jmp asm_do_irq  #syscall
.globl irq_empty; irq_empty: cli; push $0; pushl $-1;   jmp asm_do_irq  #empty call

.globl asm_do_irq

.extern irq_handle

.globl empty;

asm_do_irq:

	pushal

	pushl %esp	
	
	call irq_handle

	addl $4, %esp

	popal
	addl $8, %esp
	sti
	iret




