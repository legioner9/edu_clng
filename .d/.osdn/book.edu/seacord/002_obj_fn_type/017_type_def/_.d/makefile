hello: type_def.c 
	gcc -o hello.cxe type_def.c 

hello_g: type_def.c 
	gcc -g -o hello_g.cxe type_def.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe