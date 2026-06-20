// {{hint}}
//
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {

    char *arg0 = argv[0];
    char *arg1 = argv[1];
    printf("arg0=%s, arg1=%s\n", arg0, arg1);

    int argi1 = atoi(arg1);
    printf("b=%i", (argi1 & (1 << 1)));

    return 0;
}