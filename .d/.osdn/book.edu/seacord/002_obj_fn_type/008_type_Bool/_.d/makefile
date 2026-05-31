hello: type__Boll.c 
	gcc -o hello.cxe type__Boll.c 

hello_g: type__Boll.c 
	gcc -g -o hello_g.cxe type__Boll.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe