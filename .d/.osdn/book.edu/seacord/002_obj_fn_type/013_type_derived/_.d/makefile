hello: type_derived.c 
	gcc -o hello.cxe type_derived.c 

hello_g: type_derived.c 
	gcc -g -o hello_g.cxe type_derived.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe