#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 69

int main(void) {
    for (unsigned short int i = 0; i >= 0; --i) {
        printf("i=%d\n", i);
    }
    return 0;
}

// res::
// endless loop
