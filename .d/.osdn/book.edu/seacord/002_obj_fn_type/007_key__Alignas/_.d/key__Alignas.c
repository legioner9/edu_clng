#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 48

struct S {
    int i;
    double d;
    char c;
};

int main(void) {

    unsigned char bad_buff[sizeof(struct S)];
    _Alignas(struct S) unsigned char good_buff[sizeof(struct S)];
    struct S *bad_s_ptr = (struct S*)bad_buff;
    // bad alinment ptr
    struct S *good_s_ptr = (struct S*)good_buff;
    // good alinment ptr

    // TODO buff not initialaze???
    

    return 13;
}