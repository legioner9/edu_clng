hello: unsined_not_negative.c 
	gcc -o hello.cxe unsined_not_negative.c 

hello_g: unsined_not_negative.c 
	gcc -g -o hello_g.cxe unsined_not_negative.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe