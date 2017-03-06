VPATH = ./boot
.PHONY: clean
.PHONY: run 

BOOT= boot
MAKE= make run

run:
	cd $(BOOT) && $(MAKE)

clean:
	cd $(BOOT) && make clean
