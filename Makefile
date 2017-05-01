.PHONY: clean run gdb

BOOT= boot
KER= src/kernel
GAME= src/game
SELL= src/shell

run:
	cd $(BOOT) && make mbr
	cd $(GAME) && make game
	cd $(KER) && make kernel
	cd $(SELL) && make shell
	cat ./boot/mbr ./src/kernel/kernel ./src/game/game ./src/shell/shell > image
	echo "make successfully"
	qemu-system-i386 -monitor telnet:127.0.0.1:1111,server,nowait -serial stdio  image

gdb:	
	cd $(BOOT) && make mbr
	cd $(GAME) && make game
	cd $(KER) && make kernel
	cd $(SELL) && make shell
	cat ./boot/mbr ./src/kernel/kernel ./src/game/game ./src/shell/shell > image
	echo "make successfully"
	qemu-system-i386 -s -S -monitor telnet:127.0.0.1:1111,server,nowait -serial stdio  image
clean:
	cd $(BOOT) && make clean
	cd $(GAME) && make clean
	cd $(KER) && make clean
	cd $(SELL) && make clean
