#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 45

void loop(char);

int main() {
    loop(10);
    return 0;
}

void loop(char i) {
    int j = 1;
    puts("shadowing variable i:");
    printf("in fn i =%d\n", i);
    for (char i = 0; i < 3; i++) {
        printf("in loop i = %d\n", i);
    }
    printf("in fn after loop i =%d\n", i);
}