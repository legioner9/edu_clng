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
```\n

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
```\n

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


for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/002_str2dig/002_c2n/readme.this.man
&&&dr :: 
@@@cnt0 :: 

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/002_str2dig/002_c2n/_.d/002_c2n.c\n
---------- start program list 002_c2n.c ------------\n
```c
// {{hint}}
//
#include <stdio.h>

void a2pi(char c, char *pchar);

int main(int argc, char **argv) {

    // for (int i = 0; i < 128; ++i) {
    //     printf("i=%i, c=%c\n", i, i);
    // }
    int *pi;
    for (unsigned char i = 1; i < argc; ++i) {
        char *ptr_n;
        printf("ptr_n=%p, *ptr_n=%i\n", ptr_n, *ptr_n);
        a2pi(*argv[i], ptr_n);
        printf("ptr_n=%p, *ptr_n=%i\n", ptr_n, *ptr_n);
    }

    return 0;
}

void a2pi(char c, char *pchar) {
    char x = -'0' + c;
    *pchar = x;
    printf("pchar=%p, *pchar=%i\n", pchar, *pchar);
}
```\n

---------- end program list 002_c2n.c ------------\n

exec:: '002_str2dig 5'
ptr_n=0x7f8d5f8eaab0, *ptr_n=0
pchar=0x7f8d5f8eaab0, *pchar=5
ptr_n=0x7f8d5f8eaab0, *ptr_n=5


for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/003_str2spcu/001_s_cBc/readme.this.man
&&&dr :: 
@@@cnt0 :: 

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/003_str2spcu/001_s_cBc/_.d/001_s_cBc.c\n
---------- start program list 001_s_cBc.c ------------\n
```c
// {{hint}}
//
#include <stdio.h>

void s_cBc(char *c);

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);

    s_cBc(arg1);

    return 0;
}

void s_cBc(char *s) {

    printf("s=%p\n", s);

    for (int i = 0; s[i] != 0; ++i) {
        printf("c=%c\n", s[i]);
    }

    for (char *q = s; *q != 0; ++q) {

        printf("q=%p, s-q=(%%p)%p ,s-q=(%%i)%i ", q, q - s, q - s);
        printf("c=%c\n", *q);
    }
}
```\n

---------- end program list 001_s_cBc.c ------------\n

exec:: '003_str2spcu avkr'
arg0=003_str2spcu, arg1=avkr
s=0x7ffe8d57156a
c=a
c=v
c=k
c=r
q=0x7ffe8d57156a, s-q=(%p)(nil) ,s-q=(%i)0 c=a
q=0x7ffe8d57156b, s-q=(%p)0x1 ,s-q=(%i)1 c=v
q=0x7ffe8d57156c, s-q=(%p)0x2 ,s-q=(%i)2 c=k
q=0x7ffe8d57156d, s-q=(%p)0x3 ,s-q=(%i)3 c=r


for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/004_int2bit/001_i_bBb/readme.this.man
&&&dr :: 
@@@cnt0 :: 

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/004_int2bit/001_i_bBb/_.d/001_i_bBb.c \n
---------- start program list 001_i_bBb.c ------------\n
```c
// {{hint}}
//
#include <stdio.h>
#include <stdlib.h>

void i_bBb(int n);

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);
    i_bBb(atoi(arg1));

    return 0;
}

void i_bBb(int n) {
    printf("n=%d\n", n);
    int bit_int = 8 * sizeof(int);
    printf("bit_int=%i\n", bit_int);
    for (int i = 0; i < bit_int; i++) {
        int j = bit_int - 1 - i;
        printf("0b");
        int res = n | (1 << j);
        printf("%i", res);
        printf("\n");
    }
}
```\n

---------- end program list 001_i_bBb.c ------------\n

exec:: '004_int2bit 10'
arg0=004_int2bit, arg1=10
n=10
bit_int=32
0b-2147483638
0b1073741834
0b536870922
0b268435466
0b134217738
0b67108874
0b33554442
0b16777226
0b8388618
0b4194314
0b2097162
0b1048586
0b524298
0b262154
0b131082
0b65546
0b32778
0b16394
0b8202
0b4106
0b2058
0b1034
0b522
0b266
0b138
0b74
0b42
0b26
0b10
0b14
0b10
0b11


for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/005_bit/001_mask/readme.this.man
&&&dr :: 
@@@cnt0 :: 

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/005_bit/001_mask/_.d/001_mask.c\n
---------- start program list 001_mask.c ------------\n
```c
// {{hint}}
//
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);

    int argi1 = atoi(arg1);
    printf("b=%i", (argi1 & (1 << 1)));

    return 0;
}
```\n

---------- end program list 001_mask.c ------------\n

exec:: '005_bit 2'
arg0=005_bit, arg1=2
b=2

for file:///home/st/edu_clng/.d/.osdn/ora_c.pts/005_bit/002_opr/readme.this.man
&&&dr :: 
@@@cnt0 :: 

file:///home/st/edu_clng/.d/.osdn/ora_c.pts/005_bit/002_opr/_.d/002_opr.c\n
---------- start program list 002_opr.c ------------\n
```c
// {{hint}}
//
#include "edu_clang_c.h"
#include <stdio.h>

void print_bit_byte(unsigned char aBy);

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);

    unsigned char uby = 0xf0;
    // unsigned char uby = 0b01000010;
    print_bit_byte(uby);
    printf("%i\n", uby);

    a_edu_clang_c();

    return 0;
}

void print_bit_byte(unsigned char aBy) {

    char s[8];
    unsigned char c_bit, s_bit, cini;
    cini = 128;

    printf("aBy=%i\n", aBy);
    for (char i = 0; i < 8; i++) {
        unsigned char s_bit = cini & aBy;
        c_bit = (cini & aBy) ? '1' : '0';
        printf("cini=%i, i=%i, s_bit(%%i)=%i, c(%%i)=%i\n", cini, i, s_bit,
               c_bit);
        s[i] = c_bit;
        cini /= 2;
    }
    // s[8] = '\0';

    printf("\nres::%s\n", s);
    // printf("%c", (0b10000000 & aBy) ? '1' : '0');
    // printf("%c", (0b01000000 & aBy) ? '1' : '0');
    // printf("%c", (0b00100000 & aBy) ? '1' : '0');
    // printf("%c", (0b00010000 & aBy) ? '1' : '0');
    // printf("%c", (0b00001000 & aBy) ? '1' : '0');
    // printf("%c", (0b00000100 & aBy) ? '1' : '0');
    // printf("%c", (0b00000010 & aBy) ? '1' : '0');
    // printf("%c", (0b00000001 & aBy) ? '1' : '0');
    // printf("\n");

    // printf("%c\n", (4 & 2) ? '1' : '0'); //! 0
}
```\n

---------- end program list 002_opr.c ------------\n

exec:: '005_bit 1'
arg0=005_bit, arg1=1
aBy=240
cini=128, i=0, s_bit(%i)=128, c(%i)=49
cini=64, i=1, s_bit(%i)=64, c(%i)=49
cini=32, i=2, s_bit(%i)=32, c(%i)=49
cini=16, i=3, s_bit(%i)=16, c(%i)=49
cini=8, i=4, s_bit(%i)=0, c(%i)=48
cini=4, i=5, s_bit(%i)=0, c(%i)=48
cini=2, i=6, s_bit(%i)=0, c(%i)=48
cini=1, i=7, s_bit(%i)=0, c(%i)=48

res::11110000
240
from a_edu_clang_c


