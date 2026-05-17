# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ 								:: $@ - target
# $^								:: $^ - depend
# %									:: %  - common part
# $(arr[a.o, b.o], ...): %.c: %o	:: arr - iterator [a.o: a.c, b.o: b.c, ...]
# example_1 : instead
# a.o: a.c
# 	$(CC) -c $^ -o $@
# b.o: b.c
# 	$(CC) -c $^ -o $@ 
# all.o: all.c
# 	$(CC) -c $^ -o $@
# that code:
# $(obj): %.o: %.c
# 	$(CC) -c $^ -o $@

# wildcard 	:: for empty pattern $(wildcard *.w)

CC = gcc -I include/

obj = a.o b.o all.o

hello: $(obj)
	$(CC) $^ -o hello.cxe

# instead
# a.o: a.c
# 	$(CC) -c $^ -o $@
# b.o: b.c
# 	$(CC) -c $^ -o $@ 
# all.o: all.c
# 	$(CC) -c $^ -o $@

$(obj): %.o: %.c
	$(CC) -c $^ -o $@

clean:
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
# 29