# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ - all target

# succ expand
str_true := $(wildcard *.w)
# succ expand :: echo []
str_prevent := $(wildcard *.x)
# fail expand :: echo *.x
str_fail := *.x

hello: a b c

a: 
	echo $(str_true)
b: 
	echo $(str_prevent)
c: 
	echo $(str_fail)
	