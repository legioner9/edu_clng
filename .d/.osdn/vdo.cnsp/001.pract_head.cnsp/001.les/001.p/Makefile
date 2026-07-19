first:
	echo "empty goal"

main: main.o
	gcc main.o -o main.cxe

main_c: main.o
	gcc -c main.c -o main.o

main_s: main.s
	gcc -S main.c -o main.s

clean:
	rm main.o main.s main.c