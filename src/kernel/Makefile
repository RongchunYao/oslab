.PHONY:  clean kernel

FLAGS= -Wall -Werror
OBJ_FILE= device.o kernel.o serial.o timer.o seg.o entry.o entrypgdir.o
OBJ_FILE += i8259.o idt.o irq.o irq_handle.o printk.o load.o pcb.o pmap.o
SRC_FILE= device.c kernel.c serial.c timer.c seg.c load.c pcb.c pmap.c 
SRC_FILE +=irq/i8259.c irq/idt.c irq/irq.S irq/irq_handle.c
SRC_FILE +=lib/printk.c

kernel:
	gcc -I  include -fno-stack-protector -O0 -m32 -c $(FLAGS) $(SRC_FILE) entry.S entrypgdir.c
	ld -o kernel -T kernel.lds $(OBJ_FILE)
	objdump -d kernel > kernel.s
	chmod +x ker.sh
	./ker.sh kernel
clean:
	rm $(OBJ_FILE) kernel
