.PHONY: shell clean

CFILE= *.c
OFILE= *.o
FLAGS= -Wall -Werror  
shell:
	gcc -c -m32 -fno-stack-protector -I include $(CFILE) 
	ld -o shell -T shell.lds $(OFILE)
	chmod +x shell.sh
	./shell.sh shell
	
clean:
	rm $(OFILE) shell
	
