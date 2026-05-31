#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 47

int * static_assinment(int);

int main() {
    static_assinment();
    return 0;
}

void static_assinment(int i) {
    const int j = i;
    static int sta = i;
    static int sta_2 = j;
    static int sta_3 = 11;

    return sta_3;
}