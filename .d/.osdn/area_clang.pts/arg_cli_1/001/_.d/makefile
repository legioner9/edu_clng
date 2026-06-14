hello: arg_cli_1_1.c 
	gcc -o hello.cxe arg_cli_1_1.c 

hello_g: arg_cli_1_1.c 
	gcc -g -o hello_g.cxe arg_cli_1_1.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe