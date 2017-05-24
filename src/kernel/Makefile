.PHONY:  clean kernel
.IGNORE: clean
FLAGS= -Wall -Werror
SRC_FILE= $(shell find -name "*.c") 
kernel:
	gcc -I  include -fno-stack-protector -O0 -m32 -c $(FLAGS) $(SRC_FILE) entry.S irq/irq.S 
	mv *.o OBJ
	cd OBJ && ld -o ../kernel -T ../kernel.lds *.o
	objdump -d kernel > kernel.s
	chmod +x ker.sh
	./ker.sh kernel
clean:
	cd OBJ && rm *.o 
	rm kernel
