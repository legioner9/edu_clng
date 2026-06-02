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
    char str[11];
    printf("'0' = %d\n", '0'); // first num dig :: begin ascii [0-9]
    printf("'0' = %c\n", '0');
    printf("'0' + 0 = %c\n", '0' + 0);
    for (unsigned int i = 0; i < 10; ++i) {
        printf("i = %d\n", i);

        str[i] = '0' + i;
        printf("str[%d] = %d\n", i, str[i]);
        printf("&str[%d] = %p\n", i, &str[i]);
        printf("&str[%d] - &str[%d - 1] = %ld\n", i, i, &str[i] - &str[i - 1]);
        printf("str[11] = %s\n", str);
    }

    str[10] = '\0';
}