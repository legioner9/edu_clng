hello: dz_retrieve.c 
	gcc -o hello.cxe dz_retrieve.c 

hello_g: dz_retrieve.c 
	gcc -g -o hello_g.cxe dz_retrieve.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe