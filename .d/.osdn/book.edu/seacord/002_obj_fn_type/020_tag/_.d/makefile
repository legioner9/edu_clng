hello: tag.c 
	gcc -o hello.cxe tag.c 

hello_g: tag.c 
	gcc -g -o hello_g.cxe tag.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe