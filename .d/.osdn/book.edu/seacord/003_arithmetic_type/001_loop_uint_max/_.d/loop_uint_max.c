#include <limits.h>
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

    int i;        // signed may be down
    long i1;      // signed and int may be down
    long long i2; // signed and int may be down
    short i3;     // signed and int may be down
    char c;       // unsigned may be down
    signed char sc; // signed 

    unsigned int ui = UINT_MAX;
    printf("ui = %u\n", ui);
    ui++;
    printf("ui = %u\n", ui);
    ui--;
    printf("ui = %u\n", ui);
    return 0;
}