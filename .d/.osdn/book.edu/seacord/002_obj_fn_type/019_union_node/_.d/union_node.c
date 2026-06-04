#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: XXX

union {
    struct {
        int type;
    } n;
    struct {
        int type;
        int intnode; 
    } ni;
    struct {
        int type;
        double doublenode;
    } nf;
} u;

int main(void) {
    u.nf.type = 3;
    u.nf.doublenode = 4.112;
    printf("u.nf.type = %d, u.nf.doublenode = %f\n", u.nf.type,
           u.nf.doublenode);
    return 0;
}