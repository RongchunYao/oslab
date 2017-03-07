VPATH = ./boot
.PHONY: clean run terminal

BOOT= boot
MY_GAME= game
MAKE_MBR= make mbr
MAKE_GAME= make game

run:
	cd $(BOOT) && $(MAKE_MBR)
	cd $(MY_GAME) && $(MAKE_GAME)
	cat ./boot/mbr ./game/game > iso
	qemu-system-i386 -monitor telnet:127.0.0.1:1111,server,nowait -serial stdio -d int iso
	telnet 127.0.0.1 1111
	
clean:
	cd $(BOOT) && make clean
	cd $(MY_GAME) && make clean

