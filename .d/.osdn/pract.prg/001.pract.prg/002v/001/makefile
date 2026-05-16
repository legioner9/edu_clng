CC = gcc
CC_FLAGS = -w -Werror -Wall

hello.o: prn_fn.c 
	gcc -c $(CC_FLAGS) prn_fn.c -o hello.o 

utils.o: utils.c
	gcc -c $(CC_FLAGS) utils.c -o utils.o

clear:
	rm -fv *.cxe
	rm -fv *.o

hello.cxe: hello.o utils.o
	gcc $(CC_FLAGS) hello.o utils.o -o hello.cxe