#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 40

void swap_1(int, int);
void swap_2(int *, int *);

int main() {
    int n, m;
    n = 3;
    m = 17;
    printf("n = %d, m = %d\n", n, m);

    swap_1(n, m);
    printf("n = %d, m = %d\n", n, m);

    swap_2(&n, &m);
    printf("n = %d, m = %d\n", n, m);
    return 0;
}

void swap_1(int a, int b) {
    int t;
    printf("before in swap_1:: a = %d, b = %d\n", a, b);
    t = a;
    a = b;
    b = t;
    printf("after in swap_1:: a = %d, b = %d\n", a, b);
}

void swap_2(int *pa, int *pb) {
    printf("before in swap_2:: a = %d, b = %d\n", *pa, *pb);
    int t = *pa;
    *pa = *pb;
    *pb = t;
    printf("after in swap_2:: a = %d, b = %d\n", *pa, *pb);
}

// n = 3, m = 17
// before in swap_1:: a = 3, b = 17
// after in swap_1:: a = 17, b = 3
// n = 3, m = 17
// before in swap_2:: a = 3, b = 17
// after in swap_2:: a = 17, b = 3
// n = 17, m = 3