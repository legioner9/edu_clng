hello: struct_sigrecord.c 
	gcc -o hello.cxe struct_sigrecord.c 

hello_g: struct_sigrecord.c 
	gcc -g -o hello_g.cxe struct_sigrecord.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe