hello: pref_dig_1.c 
	gcc -o hello.cxe pref_dig_1.c 

hello_g: pref_dig_1.c 
	gcc -g -o hello_g.cxe pref_dig_1.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe

clean:
	rm -v *.cxe