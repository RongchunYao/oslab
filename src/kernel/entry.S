
# Shift Right Logical 
#define SRL(val, shamt)		(((val) >> (shamt)) & ~(-1 << (32 - (shamt)))
#define KERNBASE 0xc0000000
#define	RELOC(x) ((x) - KERNBASE)
#define CR0_PE 0x1
#define CR0_PG 0x80000000
#define CR0_WP	0x00010000	
.globl   _start
_start = RELOC(entry)

.globl entry
entry:
	movw	$0x1234,0x472			# warm boot
	movl	$(RELOC(entry_pgdir)), %eax
	movl	%eax, %cr3
	movl	%cr0, %eax
	orl	$(CR0_PE|CR0_PG), %eax
	movl	%eax, %cr0
	mov	$relocated, %eax
	jmp	*%eax
relocated:

	movl	$0x0,%ebp			# nuke frame pointe
	movl	$(bootstacktop),%esp
	call	main

	# Should never get here, but in case we do, just spin.
spin:	jmp	spin


.data
###################################################################
# boot stack
###################################################################
	.p2align	12	# force page alignment
	.globl		bootstack
bootstack:
	.space		8*4096
	.globl		bootstacktop   
bootstacktop:

