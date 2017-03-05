mbr: mbr.o
	ld -m elf_i386 -e start -Ttext=0x7c00 -o mbr mbr.o
	objcopy --strip-all --only-section=.text --output-target=binary mbr mbr
	ruby mkmbr.rb mbr
	qemu-system-i386 mbr
mbr.o: mbr.S
	gcc -m32 -c mbr.S
run:
	gcc -m32 -c mbr.S
	ld -m elf_i386 -e start -Ttext=0x7c00 -o mbr mbr.o
	objcopy --strip-all --only-section=.text --output-target=binary mbr mbr
	ruby mkmbr.rb mbr
	qemu-system-i386 mbr
.PHONY: clean

clean:
	rm mbr.o mbr	
