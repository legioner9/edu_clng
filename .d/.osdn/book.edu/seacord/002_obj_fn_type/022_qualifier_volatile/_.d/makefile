hello: quslifier_volatile.c 
	gcc -o hello.cxe quslifier_volatile.c 

hello_g: quslifier_volatile.c 
	gcc -g -o hello_g.cxe quslifier_volatile.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe