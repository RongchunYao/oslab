.PHONY: test clean

CFILE= *.c
OFILE= *.o
FLAGS= -Wall -Werror  
test:
	gcc -c $(FLAGS) -m32 -fno-stack-protector -I include $(CFILE) 
	ld -o test -e main $(OFILE)
	chmod +x test.sh
	./test.sh test
	
clean:
	rm $(OFILE) test
	
