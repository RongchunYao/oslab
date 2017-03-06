.PHONY: clean run
run:
	gcc -m32 -c main.c
	gcc -m32 -c mbr.S
	ld -m elf_i386 -e start -Ttext=0x7c00 -nostdlib -o mbr mbr.o main.o 
	objcopy --strip-all --only-section=.text --output-target=binary mbr mbr
	ruby mkmbr.rb mbr
	qemu-system-i386 mbr
clean:
	-rm mbr.o mbr main.o 	
