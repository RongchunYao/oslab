.PHONY: init clean
.IGNORE: clean
CFILE= *.c
OFILE= *.o
FLAGS= -Wall -Werror  
init:
	gcc -c $(FLAGS) -m32 -fno-stack-protector -I ../usrlib $(CFILE)
	mv $(OFILE) OBJ 
	cd OBJ && ld -o ../init -e main  $(OFILE) ../../usrlib/usrlib.a
#	chmod +x init.sh
#	./init.sh init
	
clean:
	cd OBJ && rm $(OFILE) 
	rm init
	
