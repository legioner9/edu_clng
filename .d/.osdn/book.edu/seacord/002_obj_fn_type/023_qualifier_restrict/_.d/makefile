hello: quslifier_restrict.c 
	gcc -o hello.cxe quslifier_restrict.c 

hello_g: quslifier_restrict.c 
	gcc -g -o hello_g.cxe quslifier_restrict.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe