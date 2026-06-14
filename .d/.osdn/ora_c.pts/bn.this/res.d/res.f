for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/001_first_arg/readme.this.man
&&&dr :: begin theme args
@@@cnt :: first arg from cli

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/001_first_arg/_.d/001_first_arg.c
---------- start program list 001_first_arg.c ------------
// {{hint}}
//
#include <stdio.h>

int main(int argc, char** argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);

    return 0;
}
---------- end program list 001_first_arg.c ------------

exec:: '001_args 1'
arg0=001_args, arg1=1


