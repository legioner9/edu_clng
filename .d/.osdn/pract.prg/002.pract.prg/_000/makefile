# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ 								:: $@ - target
# $^								:: $^ - all depend
# $<								:: $< - first depend
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

# src = *.c; obj = $(src:.c=.o)

# wildcard 	:: for correct empty pattern $(wildcard *.w)
# filter	:: $(filter %.o, $(fl.a fl.c))

# make ::
#	-n - only see work - not exec cmnd 
#	-f - define (makefile.fl)

hello:
	echo "Hello from makefile"