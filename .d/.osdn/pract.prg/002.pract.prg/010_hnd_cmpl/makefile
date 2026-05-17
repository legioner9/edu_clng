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

# gcc -c all.c -o all.o
# all.c: In function ‘main’:
# all.c:3:5: warning: implicit declaration of function ‘a’ [-Wimplicit-function-declaration]
#     3 |     a();
#       |     ^
# all.c:4:5: warning: implicit declaration of function ‘b’ [-Wimplicit-function-declaration]
#     4 |     b();
#       |     ^
# gcc a.o b.o all.o -o hello.cxe
# a
# b
# 33