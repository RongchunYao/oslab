.PHONY: clean game

OBJ_FILE = game/game.o main.o game/game_device.o game/video_part.o
OBJ_FILE += device/serial.o device/timer.o
OBJ_FILE += lib/printk.o
OBJ_FILE += irq/i8259.o irq/idt.o irq/irq.o irq/irq_handle.o


game:
	cd game && gcc -fno-stack-protector -O0 -m32 -c game.c game_device.c video_part.c
	gcc -m32 -c main.c 
	cd device && gcc -m32 -c serial.c timer.c
	cd lib && gcc -m32 -c -fno-stack-protector printk.c
	cd irq && gcc -m32 -c i8259.c idt.c irq.S irq_handle.c
	ld -o main -T game/game.lds $(OBJ_FILE)
clean:
	-rm $(OBJ_FILE) main 
