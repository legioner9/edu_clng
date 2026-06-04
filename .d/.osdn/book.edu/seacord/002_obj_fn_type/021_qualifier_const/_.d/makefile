hello: quslifier_const.c 
	gcc -o hello.cxe quslifier_const.c 

hello_g: quslifier_const.c 
	gcc -g -o hello_g.cxe quslifier_const.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe