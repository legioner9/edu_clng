#include <stdio.h>
#include <stdlib.h>

// {{hint}}

// page book:: XXX

int main() {
    puts(EOF);
    if (puts("Hello World!\n") == EOF) {
        return EXIT_FAILURE;
    }
    return EXIT_SUCCESS;
}