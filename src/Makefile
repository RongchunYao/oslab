.PHONY: clean game

FLAGS= -Wall -Werror 
OBJ_FILE = game/game.o main.o game/game_device.o game/video_part.o
OBJ_FILE += device/serial.o device/timer.o
OBJ_FILE += lib/printk.o lib/random.o
OBJ_FILE += irq/i8259.o irq/idt.o irq/irq.o irq/irq_handle.o


game:
	cd game && gcc -fno-stack-protector -O0 -m32 -c $(FLAGS) game.c game_device.c video_part.c 
	gcc -m32 -c $(FLAGS) main.c 
	cd device && gcc -m32 -c $(FLAGS) serial.c timer.c 
	cd lib && gcc -m32 -c -fno-stack-protector $(FLAGS)  printk.c random.c 
	cd irq && gcc -m32 -c $(FLAGS) i8259.c idt.c irq.S irq_handle.c -Werror
	ld -o main -T game/game.lds $(OBJ_FILE)
clean:
	-rm $(OBJ_FILE) main 
