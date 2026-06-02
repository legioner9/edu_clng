#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: XXX

int main(void) {
    int i = 2;
    printf("i = %d, ++i = %d, i = %d\n", i, ++i, i);
    printf("i = %d, i++ = %d, i = %d\n", i, i++, i);
    return 0;
}