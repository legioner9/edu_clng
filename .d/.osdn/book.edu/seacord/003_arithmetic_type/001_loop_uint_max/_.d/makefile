hello: loop_uint_max.c 
	gcc -o hello.cxe loop_uint_max.c 

hello_g: loop_uint_max.c 
	gcc -g -o hello_g.cxe loop_uint_max.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe