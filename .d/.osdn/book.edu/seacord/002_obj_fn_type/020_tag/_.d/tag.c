#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 059

int main(void) {
    enum day { sun, mon };
    // day today // wrong
    enum day tomorrow;
    tomorrow = mon;
    printf("enum day tomorrow = %d\n", mon);
    return 0;
}