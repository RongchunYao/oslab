.PHONY: clean game
.IGNORE: clean

FLAGS= -Wall -Werror -fno-stack-protector
SRC_FILE=$(shell find -name "*.c")
game: 
	gcc -m32 -c -I ../usrlib $(FLAGS) $(SRC_FILE)
	mv *.o OBJ
	cd OBJ && ld -o ../game -e main  *.o ../../usrlib/usrlib.a
	objdump -d game > game.s
	chmod +x game.sh
	./game.sh game
clean:
	cd OBJ && rm *.o
	rm game

