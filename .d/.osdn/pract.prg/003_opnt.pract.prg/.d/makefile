# {{body}}

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