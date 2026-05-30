#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] :: 

*/

// page book:: XXX

int main(){
    if (printf("Hello World!\n")<0){
        perror("printf()"); // POSIX requires that errno is set

    };
    return EXIT_SUCCESS;
}