hello: type_fn.c 
	gcc -o hello.cxe type_fn.c 

hello_g: type_fn.c 
	gcc -g -o hello_g.cxe type_fn.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe