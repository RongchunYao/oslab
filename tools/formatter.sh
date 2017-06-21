	g++ -o maker disk.cpp
	./maker
	dd if=/dev/zero of=./disk.bin bs=1024 count=131072
	dd if=firstblock.bin of=./disk.bin conv=notrunc
	dd if=../src/kernel/kernel  of=./disk.bin seek=8  conv=notrunc
	dd if=t27block.bin of=./disk.bin seek=208 conv=notrunc
	cat ../boot/mbr inodemap.bin blockmap.bin inode.bin disk.bin  > image
	rm disk.bin inodemap.bin blockmap.bin inode.bin firstblock.bin t27block.bin 
