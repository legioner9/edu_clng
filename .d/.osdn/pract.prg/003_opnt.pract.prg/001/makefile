# [[body]]
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

# wildcard 	:: if empty pattern $(wildcard *.w)
# patsubst  :: obj_fl := $(patsubst %.c,%.o,$(wildcard *.c))

# .PHONY: - define only trg

CC = gcc -I include/

# src_fl := $(wildcard *.c)
obj_fl := $(patsubst %.c,%.o,$(wildcard *.c))

.PHONY: hello

hello:	$(obj_fl)
	$(CC) $^ -o hello.cxe

$(filter %.o,$(obj_fl)): %.o: %.c
	$(CC) -c $^ -o $@
		
# $(filter %.result,$(obj_fl)): %.result: %.raw
# 	$(CC) -c $^ -o $@

clean:
	rm -f $(obj_fl) hello.cxe