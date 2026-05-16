

hello.o: 2_file.c 
	gcc -c 2_file.c -o hello.o 

utils.o: utils.c
	gcc -c utils.c -o utils.o

clean:
	rm -f hello.cxe
	
hello.cxe: hello.o utils.o
	gcc hello.o utils.o -o hello.cxe