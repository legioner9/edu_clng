for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/001_first_arg/readme.this.man
&&&dr :: arg first work
@@@cnt :: arg1 = 1

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/001_first_arg/_.d/include/a.c
---------- start program list a.c ------------
#include <stdio.h>

void a() { printf("a)-+\n"); }
---------- end program list a.c ------------



file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/001_first_arg/_.d/001_first_arg.c
---------- start program list 001_first_arg.c ------------
// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/
#include "a_b.h"
#include "aer_foe_c.h"
#include "edu_clang_c.h"
#include <stdio.h>

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);
    // check link libs
    a_aer_foe_c();
    a_edu_clang_c();
    return 43;

}
---------- end program list 001_first_arg.c ------------



for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/002_arg_is_int/readme.this.man
&&&dr :: 
@@@cnt :: 

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/002_arg_is_int/_.d/include/a.c
---------- start program list a.c ------------
#include <stdio.h>

void a() { printf("a)-+\n"); }
---------- end program list a.c ------------

exec:: '001_args 1'
arg0=001_args, arg1=1
a)-+
from a_aer_foe_c
from a_edu_clang_c


file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/002_arg_is_int/_.d/002_arg_is_int.c
---------- start program list 002_arg_is_int.c ------------
// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] :: 

*/
#include "a_b.h"
#include "aer_foe_c.h"
#include "edu_clang_c.h"
#include <stdio.h>

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);
    // check link libs
    a();
    a_aer_foe_c();
    a_edu_clang_c();
    return 43;

}
---------- end program list 002_arg_is_int.c ------------

exec:: '001_args 1'
arg0=001_args, arg1=1
a)-+
from a_aer_foe_c
from a_edu_clang_c


