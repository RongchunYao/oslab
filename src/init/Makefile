.PHONY: init clean

CFILE= *.c
OFILE= *.o
FLAGS= -Wall -Werror  
init:
	gcc -c $(FLAGS) -m32 -fno-stack-protector -I include $(CFILE) 
	ld -o init -e main  $(OFILE)
	chmod +x init.sh
	./init.sh init
	
clean:
	rm $(OFILE) init
	
