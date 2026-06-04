hello: union_node.c 
	gcc -o hello.cxe union_node.c 

hello_g: union_node.c 
	gcc -g -o hello_g.cxe union_node.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe