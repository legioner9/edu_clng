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
    const int n = 3;
    // n = 5; // false

    const int i = 1;
    int *ip = (int *)&i;
    *ip = 2;
    printf("*ip = %d, i = %d\n", *ip, i); // NOT_DEF_BEHAV !!! i may be in not_cange memory !!!
    return 0;
}