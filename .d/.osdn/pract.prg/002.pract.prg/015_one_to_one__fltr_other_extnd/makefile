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
# filter	:: $(filter %.o, $(fl.a fl.c))

obj_fl = all.obj a.o b.o
src_fl = all.src a.c b.c

all: $(obj_fl)

.PHONY: all

$(filter %.o, $(obj_fl)): %.o: %.c
	@echo "Trg $@, Dpn $<"

$(filter %.obj, $(obj_fl)): %.obj: %.src
	echo "Trg $@, Dpn $<"

%c %.src:
	touch $@

clean: 
	rm -f $(src_fl)

# rm -f all.src a.c b.c
# touch all.src
# echo "Trg all.obj, Dpn all.src"
# Trg all.obj, Dpn all.src
# touch a.c
# echo "Trg a.o, Dpn a.c"
# Trg a.o, Dpn a.c
# touch b.c
# echo "Trg b.o, Dpn b.c"
# Trg b.o, Dpn b.c

# rm -f all.src a.c b.c
# touch all.src
# Trg all.obj, Dpn all.src
# touch a.c
# Trg a.o, Dpn a.c
# touch b.c
# Trg b.o, Dpn b.c

# rm -f all.src a.c b.c
# touch all.src
# echo "Trg all.obj, Dpn all.src"
# Trg all.obj, Dpn all.src
# touch a.c
# Trg a.o, Dpn a.c
# touch b.c
# Trg b.o, Dpn b.c


