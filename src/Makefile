.PHONY: clean game

FLAGS= -Wall -Werror 
OBJ_FILE = game/game.o  game/game_device.o game/video_part.o
KERNEL_FILE = kernel/serial.o kernel/timer.o kernel/kernel.o
OBJ_FILE +=  lib/random.o
 OBJ_FILE += lib/printk.o
KERNEL_FILE += kernel/irq/i8259.o kernel/irq/idt.o kernel/irq/irq.o kernel/irq/irq_handle.o


game:
	cd game && gcc -fno-stack-protector -O0 -m32 -c $(FLAGS) game.c game_device.c video_part.c 
	cd kernel && gcc -m32 -c $(FLAGS) serial.c timer.c kernel.c
	cd lib && gcc -m32 -c -fno-stack-protector $(FLAGS)  random.c printk.c
	cd kernel/irq && gcc -m32 -c $(FLAGS) i8259.c idt.c irq.S irq_handle.c -Werror
	ld -o main $(OBJ_FILE)
	ld -o kernel -T kernel/kernel.ld  $(KERNEL_FILE)
clean:
	-rm $(OBJ_FILE) main 
