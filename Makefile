.PHONY: clean run terminal

BOOT= boot
KER= src/kernel
GAME= src/game

run:
	cd $(BOOT) && make mbr
#	cd $(GAME) && make game
	cd $(KER) && make kernel 
	cat ./boot/mbr ./src/kernel/kernel > image
	echo "make successfully"
	qemu-system-i386 -monitor telnet:127.0.0.1:1111,server,nowait -serial stdio  image

	
clean:
	cd $(BOOT) && make clean
	cd $(GAME) && make clean
	cd $(KER) && make clean

