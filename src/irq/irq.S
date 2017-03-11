
.globl irq0; irq0: pushl $1000; jmp asm_do_irq  #timer
.globl irq1; irq1: pushl $1001; jmp asm_do_irq  #keyboard

.globl irq_empty; irq_empty: pushl $-1; jmp asm_do_irq

.globl asm_do_irq

.extern irq_handle

asm_do_irq:
	pushal

	pushl %esp			
	call irq_handle
	addl $4, %esp

	popal
	addl $4, %esp
	iret
