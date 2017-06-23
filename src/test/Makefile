.PHONY: test clean
.IGNORE: clean
CFILE= *.c
OFILE= *.o
FLAGS= -Wall  
test:
	gcc -c $(FLAGS) -m32 -O0 -fno-stack-protector -I ../usrlib $(CFILE) 
	mv $(OFILE) OBJ
	cd OBJ && ld -o ../test  -e main $(OFILE) ../../usrlib/usrlib.a
#	chmod +x test.sh
#	./test.sh test
	
clean:
	cd OBJ && rm $(OFILE)
	rm test
	
