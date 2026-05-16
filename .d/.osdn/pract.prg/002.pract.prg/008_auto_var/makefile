# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ 		:: $@ - all target
# wildcard 	:: for empty pattern $(wildcard *.w)

hello1 hello2: a b c d
	echo $@
	echo $?
	echo $^
	echo $<

hello1:
hello2:
a:
b:
c:
d:

# echo hello1
# hello1
# echo a b c d
# a b c d
# echo a b c d
# a b c d
# echo a
# a
