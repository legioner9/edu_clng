#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *f = fopen("not_file", "r");
    if (f == NULL) {
        // perror("");
        perror("fopen() failed");
    } else {
        fclose(f);
    }
}