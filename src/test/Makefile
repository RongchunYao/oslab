.PHONY: test clean
.IGNORE: clean
CFILE= *.c
OFILE= *.o
FLAGS= -Wall -Werror  
test:
	gcc -c $(FLAGS) -m32 -fno-stack-protector -I include $(CFILE) 
	mv $(OFILE) OBJ
	cd OBJ && ld -o ../test -e main $(OFILE)
	chmod +x test.sh
	./test.sh test
	
clean:
	cd OBJ && rm $(OFILE)
	rm test
	
