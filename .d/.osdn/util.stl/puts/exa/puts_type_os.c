#include <stdio.h>

int main(void) {

#ifdef __WINDOWS__
    puts("Windows");
#elif __APPLE__
    puts("Mac OS");
#elif __linux__
    puts("Linux");
#else
    puts("Undefined operation system");
#endif

    return 0;
}