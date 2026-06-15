for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/001_first_arg/readme.this.man
&&&dr :: begin theme args
@@@cnt :: first arg from cli

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/001_first_arg/_.d/001_first_arg.c\n
---------- start program list 001_first_arg.c ------------\n
```c
// {{hint}}
//
#include <stdio.h>

int main(int argc, char** argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);

    return 0;
}
```
\n

---------- end program list 001_first_arg.c ------------\n

exec:: '001_args 1'
arg0=001_args, arg1=1


for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/002_str2dig/001_atoi/readme.this.man
&&&dr :: str to dig
@@@cnt0 :: usu stlcr atoi
@@@cnt :: atoi return succ:: string, fail:: 0

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/002_str2dig/001_atoi/_.d/001_atoi.c\n
---------- start program list 001_atoi.c ------------\n
```c
// {{hint}}
//
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {

    printf("%i\n", atoi(" -123junk"));
    printf("%i\n", atoi(" -dsfv123junk"));
    printf("%i\n", atoi(" +321dust"));
    printf("%i\n", atoi(" +qwe321dust"));
    printf("%i\n", atoi("0"));
    printf("%i\n",
           atoi("0042")); // treated as a decimal number with leading zeros
    printf("%i\n",
           atoi("0x2A")); // only leading zero is converted discarding "x2A"
    printf("%i\n", atoi("junk"));       // no conversion can be performed
    printf("%i\n", atoi("2147483648")); // UB: out of range of int

    return 0;
}
```
\n

---------- end program list 001_atoi.c ------------\n

exec:: '002_str2dig'
-123
0
321
0
0
42
0
0
-2147483648


