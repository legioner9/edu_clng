// {{hint}}
//
#include <stdio.h>
#include <stdlib.h>

void i_bBb(int n);

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);
    i_bBb(atoi(arg1));

    return 0;
}

void i_bBb(int n) {
    printf("n=%d\n", n);
    int bit_int = 8 * sizeof(int);
    printf("bit_int=%i\n", bit_int);
    for (int i = 0; i < bit_int; i++) {
        int j = bit_int - 1 - i;
        printf("0b");
        int res = n | (1 << j);
        printf("%i", res);
        printf("\n");
    }
}