#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 54

int main(void) {
    int *np;
    char *cp;
    void *vp;

    int i = 33;
    int *ip = &i;
    printf("*ip = %d\n", *ip);
    return 0;
}