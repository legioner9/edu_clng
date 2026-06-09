hello: type_float_1.c 
	gcc -o hello.cxe type_float_1.c 

hello_g: type_float_1.c 
	gcc -g -o hello_g.cxe type_float_1.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe