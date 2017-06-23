.PHONY: clean disk 

disk:
	gcc -o maker disk.c
	./formatter.sh
	gcc -o copy2myfs copy2myfs.c
	gcc -o read_myfs read_myfs.c
	cp image ../image
	cp ../src/game/game game
	./copy2myfs game /load_file/
	cp ../src/init/init init
	./copy2myfs init /load_file/
	cp ../src/test/test test
	./copy2myfs test /load_file/
	rm image game init test
	
clean:	
	rm maker copy2myfs read_myfs
