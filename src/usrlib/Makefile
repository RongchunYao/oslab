.PHONY : clean lib
.IGNORE: clean
lib:
	gcc -c -m32 -Wall -Werror -fno-stack-protector  *.c 
	ar rcs usrlib.a *.o

clean:
	rm *.o usrlib.a
