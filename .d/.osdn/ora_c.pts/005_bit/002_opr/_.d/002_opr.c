// {{hint}}
//
#include "edu_clang_c.h"
#include <stdio.h>

void print_bit_byte(unsigned char aBy);

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);

    unsigned char uby = 0xf0;
    // unsigned char uby = 0b01000010;
    print_bit_byte(uby);
    printf("%i\n", uby);

    a_edu_clang_c();

    return 0;
}

void print_bit_byte(unsigned char aBy) {

    char s[8];
    unsigned char c_bit, s_bit, cini;
    cini = 128;

    printf("aBy=%i\n", aBy);
    for (char i = 0; i < 8; i++) {
        unsigned char s_bit = cini & aBy;
        c_bit = (cini & aBy) ? '1' : '0';
        printf("cini=%i, i=%i, s_bit(%%i)=%i, c(%%i)=%i\n", cini, i, s_bit,
               c_bit);
        s[i] = c_bit;
        cini /= 2;
    }
    // s[8] = '\0';

    printf("\nres::%s\n", s);
    // printf("%c", (0b10000000 & aBy) ? '1' : '0');
    // printf("%c", (0b01000000 & aBy) ? '1' : '0');
    // printf("%c", (0b00100000 & aBy) ? '1' : '0');
    // printf("%c", (0b00010000 & aBy) ? '1' : '0');
    // printf("%c", (0b00001000 & aBy) ? '1' : '0');
    // printf("%c", (0b00000100 & aBy) ? '1' : '0');
    // printf("%c", (0b00000010 & aBy) ? '1' : '0');
    // printf("%c", (0b00000001 & aBy) ? '1' : '0');
    // printf("\n");

    // printf("%c\n", (4 & 2) ? '1' : '0'); //! 0
}