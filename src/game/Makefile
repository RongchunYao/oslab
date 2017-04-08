.PHONY: clean game

FLAGS= -Wall -Werror -fno-stack-protector
SRC_FILE= video_part.c game.c lib/device.c lib/print.c lib/random.c 
OBJ_FILE= game.o video_part.o device.o print.o random.o

game: 
	gcc -m32 -c $(FLAGS) $(SRC_FILE)
	ld -o game -T game.lds $(OBJ_FILE)

clean:
	-rm $(OBJ_FILE) game

