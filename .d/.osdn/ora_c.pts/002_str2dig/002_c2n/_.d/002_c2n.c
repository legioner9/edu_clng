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
        a2pi(*argv[i], ptr_n);
        printf("arg[%i]=%s\n a2pi(&argv[%i], %p)\n %i\n", i, argv[i], i, ptr_n,
               *ptr_n);
    }

    return 0;
}

void a2pi(char c, char *pchar) {
    char x = -'0' + c;
    printf("a2pi->'%i'\n", x);
    pchar = &x;
}