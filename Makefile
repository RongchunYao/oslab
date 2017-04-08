.PHONY: clean run terminal

BOOT= boot
KER= src/kernel
GAME= src/game

run:
	cd $(BOOT) && make mbr
	cd $(GAME) && make game
	cd $(KER) && make kernel
	cd src && gcc -c test.c 
	cd src && ld -o test -T game.lds test.o 
	cat ./boot/mbr ./src/kernel/kernel ./src/test > image
	echo "make successfully"
	qemu-system-i386 -monitor telnet:127.0.0.1:1111,server,nowait -serial stdio  image

	
clean:
	cd $(BOOT) && make clean
	cd $(GAME) && make clean
	cd $(KER) && make clean

