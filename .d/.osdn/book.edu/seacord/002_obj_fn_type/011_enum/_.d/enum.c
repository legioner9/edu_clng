#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// https://metanit.com/c/tutorial/6.8.php

struct BinOp {
    int operand1;
    int operand2;
    enum { ADD, SUB, MUL } operation;
};

int main(void) {

    struct BinOp calc1 = {.operand1 = 5, .operand2 = 7, .operation = MUL};

    printf("Operands: %d, %d , Operation: %d\n", calc1.operand1, calc1.operand2,
           calc1.operation);
    return 0;
}