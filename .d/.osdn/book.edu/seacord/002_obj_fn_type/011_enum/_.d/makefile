hello: enum.c 
	gcc -o hello.cxe enum.c 

hello_g: enum.c 
	gcc -g -o hello_g.cxe enum.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe