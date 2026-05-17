# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ 		:: $@ - all target
# wildcard 	:: for empty pattern $(wildcard *.w)

CC = gcc -I include/

obj = a.o b.o all.o

hello: $(obj)
	$(CC) $^ -o hello.cxe

a.o: a.c
	$(CC) -c $^ -o a.o
b.o: b.c
	$(CC) -c $^ -o b.o
all.o: all.c
	$(CC) -c $^ -o all.o

clear:
	rm -fv *.o

# удалён 'all.o'
# удалён 'a.o'
# удалён 'b.o'
# gcc -I include/ -c a.c -o a.o
# gcc -I include/ -c b.c -o b.o
# gcc -I include/ -c all.c -o all.o
# gcc -I include/ a.o b.o all.o -o hello.cxe
# a
# b
# 31