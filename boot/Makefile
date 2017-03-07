.PHONY: clean mbr
mbr:
	gcc -m32 -c -O1 main.c 
	gcc -m32 -c mbr.S
	ld -m elf_i386 -e start -Ttext=0x7c00 -nostdlib -o mbr mbr.o main.o
	objcopy --strip-all --only-section=.text --output-target=binary mbr mbr
	ruby mkmbr.rb mbr
clean:
	-rm mbr.o mbr main.o 	
