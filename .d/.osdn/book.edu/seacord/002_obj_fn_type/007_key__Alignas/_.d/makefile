hello: key__Alignas.c 
	gcc -o hello.cxe key__Alignas.c 

hello_g: key__Alignas.c 
	gcc -g -o hello_g.cxe key__Alignas.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe