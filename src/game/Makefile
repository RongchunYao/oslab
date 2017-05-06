.PHONY: clean game

FLAGS= -Wall -Werror -fno-stack-protector
SRC_FILE= video_part.c game.c lib/device.c lib/print.c lib/random.c lib/syslib.c
OBJ_FILE= game.o video_part.o device.o print.o random.o syslib.o

game: 
	gcc -m32 -c $(FLAGS) $(SRC_FILE)
	ld -o game -e main  $(OBJ_FILE)
	objdump -d game > game.s
	chmod +x game.sh
	./game.sh game
clean:
	-rm $(OBJ_FILE) game

