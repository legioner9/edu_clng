hello: static_assignment.c 
	gcc -o hello.cxe static_assignment.c 

hello_g: static_assignment.c 
	gcc -g -o hello_g.cxe static_assignment.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm *.cxe