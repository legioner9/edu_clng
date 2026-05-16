# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ 		:: $@ - all target
# wildcard 	:: for empty pattern $(wildcard *.w)

CC := gcc 
CFLAGS := -g 

#! without cmpl
fn: fn.o
#! strong empty Cmnd
fn.c:
	echo "int main(){return 34;}" > fn.c

clean:
	rm -fv fn*

# rm -fv fn*
# удалён 'fn'
# удалён 'fn.c'
# удалён 'fn.o'
# echo "int main(){return 34;}" > fn.c
# gcc  -g    -c -o fn.o fn.c
# gcc    fn.o   -o fn
# 34