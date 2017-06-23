.PHONY: clean run gdb

BOOT= boot
KER= src/kernel
GAME= src/game
INIT= src/init
TEST= src/test
LIB= src/usrlib
DISK= tools

continue:
		
	qemu-system-i386 -monitor telnet:127.0.0.1:1111,server,nowait -serial stdio image
run:	
	cd $(LIB) && make lib
	cd $(BOOT) && make mbr
	cd $(KER) && make kernel
	cd $(GAME) && make game
	cd $(INIT) && make init
	cd $(TEST) && make test
	cd $(DISK) && make disk
	echo "make successfully"
	qemu-system-i386 -monitor telnet:127.0.0.1:1111,server,nowait -serial stdio image
		

gdb:	
	qemu-system-i386 -s -S -monitor telnet:127.0.0.1:1111,server,nowait -serial stdio  image

clean:
	cd $(BOOT) && make clean
	cd $(GAME) && make clean
	cd $(KER) && make clean
	cd $(INIT) && make clean
	cd $(TEST) && make clean
	cd $(LIB) && make clean
	cd $(DISK) && make clean
	rm image
