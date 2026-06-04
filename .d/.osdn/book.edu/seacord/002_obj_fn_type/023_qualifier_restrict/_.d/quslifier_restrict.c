#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/
// TODO *p++ = *q++ ?
// page book:: XXX

void f(unsigned int n, int *restrict p, int *restrict q) {
    while (n-- > 0) {
        *p++ = *q++;
    }
}

int main(void) {
    printf("Hello World!\n");
    return 0;
}