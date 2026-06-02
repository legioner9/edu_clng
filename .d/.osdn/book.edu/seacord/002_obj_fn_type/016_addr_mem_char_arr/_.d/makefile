hello: addr_mem_char_arr.c 
	gcc -o hello.cxe addr_mem_char_arr.c 

hello_g: addr_mem_char_arr.c 
	gcc -g -o hello_g.cxe addr_mem_char_arr.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe