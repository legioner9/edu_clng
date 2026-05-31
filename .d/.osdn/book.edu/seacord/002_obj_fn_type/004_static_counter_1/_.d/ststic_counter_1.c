#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 46

void increment(void);

int main() {
    for (char i = 0; i < 3; i++) {
        increment();
    }
    return 0;
}

void increment(void) {
    static char counter = 0;
    counter++;
    printf("i = %d\n", counter);
}