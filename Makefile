VPATH = ./boot
.PHONY: clean
.PHONY: run 

BOOT= boot
MY_GAME= game
MAKE_MBR= make mbr
MAKE_GAME= make game

run:
	cd $(BOOT) && $(MAKE_MBR)
	cd $(MY_GAME) && $(MAKE_GAME)
	cat ./boot/mbr ./game/game iso
	qemu-system-i386 iso
clean:
	cd $(BOOT) && make clean
	cd $(MY_GAME) && make clean
