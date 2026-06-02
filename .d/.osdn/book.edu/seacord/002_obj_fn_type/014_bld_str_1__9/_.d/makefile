hello: bld_str_0__9.c 
	gcc -o hello.cxe bld_str_0__9.c 

hello_g: bld_str_0__9.c 
	gcc -g -o hello_g.cxe bld_str_0__9.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe