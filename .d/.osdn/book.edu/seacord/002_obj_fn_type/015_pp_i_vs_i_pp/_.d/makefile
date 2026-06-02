hello: pp_i_vs_i_pp.c 
	gcc -o hello.cxe pp_i_vs_i_pp.c 

hello_g: pp_i_vs_i_pp.c 
	gcc -g -o hello_g.cxe pp_i_vs_i_pp.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe