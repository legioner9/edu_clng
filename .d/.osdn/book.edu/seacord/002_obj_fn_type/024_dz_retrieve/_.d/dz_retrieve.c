#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// https://translated.turbopages.org/proxy_u/en-ru.ru.8a237499-6a22b903-efad2d32-74722d776562/https/stackoverflow.com/questions/65522309/how-can-i-retrieve-the-value-of-an-out-of-scope-static-without-a-pointer-in-c

#include <stdio.h>

// TODO not understand that example

unsigned int check = 1;
unsigned int setcounter(unsigned int *c) {
    static unsigned int count = 0;
    if (c == &check) {
        return count;
    } else {
        count = *c;
        return count;
    }
}
unsigned int retrieve(void) { return setcounter(&check); }
void increment(void) {
    static unsigned int counter = 0;
    counter++;
    setcounter(&counter);
    printf("%d ", counter);
}

int main(void) {
    for (int i = 0; i < 5; i++) {
        printf("Count: ");
        increment();
        printf("Retrieved: ");
        printf("%d\n", retrieve());
    }
    return 0;
}
