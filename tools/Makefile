.PHONY: clean disk 

disk:
	g++ -o maker disk.cpp
	./formatter.sh
	gcc -o copy2myfs copy2myfs.c
	gcc -o read_myfs read_myfs.c
	cp ../src/game/game game
	./copy2myfs game /
#	cp ../src/init/init init
	./copy2myfs init /

clean:	
