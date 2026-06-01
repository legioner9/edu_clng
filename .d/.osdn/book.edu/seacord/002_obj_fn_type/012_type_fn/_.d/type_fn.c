#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 52

int max(int a, int b);

int main(void) {

    int a = 4;
    int b = 6;
    printf("a = %d, b = %d, max = %d\n", a, b, max(a, b));

    a = 7;
    b = 2;
    printf("a = %d, b = %d, max = %d\n", a, b, max(a, b));

    a = 1;
    b = 1;
    printf("a = %d, b = %d, max = %d\n", a, b, max(a, b));

    return 0;
}

int max(int a, int b) { return a > b ? a : b; }
