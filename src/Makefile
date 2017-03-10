.PHONY: clean game

OBJ_FILE = game/game.o game main.o device/serial.o main

game:
	cd game && gcc -m32 -c game.c
	gcc -m32 -c main.c
	cd device && gcc -m32 -c serial.c
	cd lib && gcc -m32 -c -fno-stack-protector printk.c
	ld -o main -T game/game.lds game/game.o main.o device/serial.o lib/printk.o
clean:
	-rm $(OBJ_FILE)
