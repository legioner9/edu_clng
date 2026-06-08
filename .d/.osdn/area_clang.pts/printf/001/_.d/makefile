hello: print_1.c 
	gcc -o hello.cxe print_1.c 

hello_g: print_1.c 
	gcc -g -o hello_g.cxe print_1.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe