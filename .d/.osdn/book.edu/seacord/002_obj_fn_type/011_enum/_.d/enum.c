#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: 51
// TODO enum see : https://metanit.com/c/tutorial/6.8.php

int main(void) {
    enum day { sun, mon, tue, wen, thu, fri, sat };
    enum cardinal_points { north = 0, east = 90, south = 180, west = 270 };
    enum months {
        jan = 1,
        feb,
        mar,
        apr,
        may,
        jun,
        jul,
        aug,
        sep,
        oct,
        nov,
        dec
    };

    return 0;
}