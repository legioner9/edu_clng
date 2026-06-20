// {{hint}}
//
#include <stdio.h>

void s_cBc(char *c);

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);

    s_cBc(arg1);
    
    return 0;
}

void s_cBc(char *s) {

    for (int i = 0; s[i] != 0; ++i) {
        printf("c=%c\n", s[i]);
    }
}