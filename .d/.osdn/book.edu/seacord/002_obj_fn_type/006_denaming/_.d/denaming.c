#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: XXX

int main() {
    int *pn;
    *pn = 1;
    printf("pn = %p, *pn = %d\n", pn, *pn);
    return 0;
}