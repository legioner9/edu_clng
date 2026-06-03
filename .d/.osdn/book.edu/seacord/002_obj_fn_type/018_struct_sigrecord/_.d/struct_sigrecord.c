#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] :: 

*/

// page book:: 57

struct sigrecord{
    int signum;
    char signame [20];
    char sigdesc [100];
} sigline, *sigline_p;

int main(void){
    printf("Hello World!\n");
    return 0;
}