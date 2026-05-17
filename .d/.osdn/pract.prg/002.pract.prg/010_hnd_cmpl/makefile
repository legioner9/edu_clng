# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ 		:: $@ - all target
# wildcard 	:: for empty pattern $(wildcard *.w)

CC = gcc -c

obj = a.o b.o all.o

hello: a.o b.o all.o
	gcc a.o b.o all.o -o hello.cxe

a.o: a.c
	gcc -c a.c -o a.o
b.o: b.c
	gcc -c b.c -o b.o
all.o: all.c
	gcc -c all.c -o all.o