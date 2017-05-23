.PHONY:  clean kernel
.IGNORE: clean
FLAGS= -Wall -Werror
OBJ_FILE= device.o kernel.o serial.o timer.o seg.o entry.o entrypgdir.o
OBJ_FILE += i8259.o idt.o irq.o irq_handle.o printk.o load.o pcb.o pmap.o
SRC_FILE= device/device.c kernel.c device/serial.c device/timer.c memory/seg.c process/load.c process/pcb.c memory/pmap.c 
SRC_FILE +=irq/i8259.c irq/idt.c irq/irq.S irq/irq_handle.c memory/entrypgdir.c irq/printk.c

kernel:
	gcc -I  include -fno-stack-protector -O0 -m32 -c $(FLAGS) $(SRC_FILE) entry.S 
	mv $(OBJ_FILE) OBJ
	cd OBJ && ld -o ../kernel -T ../kernel.lds $(OBJ_FILE)
	objdump -d kernel > kernel.s
	chmod +x ker.sh
	./ker.sh kernel
clean:
	cd OBJ && rm $(OBJ_FILE) 
	rm kernel
