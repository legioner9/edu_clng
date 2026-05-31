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

    // char NOT digital!!!
    for (int i = 0; i < 128; i++) {
        printf("%c\n", i);
    }
// u_char and s_char digital!!!
    unsigned char uc = 55;
    printf("uc = %d\n", uc);

    signed char sc = -25;
    printf("sc = %d\n", sc);

    return 0;
}