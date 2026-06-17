// {{hint}}
//
#include <stdio.h>

void a2pi(char c, char *pchar);

int main(int argc, char **argv) {

    // for (int i = 0; i < 128; ++i) {
    //     printf("i=%i, c=%c\n", i, i);
    // }
    int *pi;
    for (unsigned char i = 1; i < argc; ++i) {
        char *ptr_n;
        printf("ptr_n=%p, *ptr_n=%i\n", ptr_n, *ptr_n);
        a2pi(*argv[i], ptr_n);
        printf("ptr_n=%p, *ptr_n=%i\n", ptr_n, *ptr_n);
    }

    return 0;
}

void a2pi(char c, char *pchar) {
    char x = -'0' + c;
    *pchar = x;
    printf("pchar=%p, *pchar=%i\n", pchar, *pchar);
}