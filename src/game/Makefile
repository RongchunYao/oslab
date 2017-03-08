.PHONY: clean game
game:
	gcc -m32 -c game.c
	ld -o game -T game.lds game.o
clean:
	-rm game.o game
