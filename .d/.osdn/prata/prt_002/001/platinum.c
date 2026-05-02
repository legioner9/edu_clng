#include <stdio.h>

// page book:: 080

int main()
{
    float weght; //
    float value; //
    _Complex c1;
    _Bool b1;
    // _Imaginary i1;
    double d;
    d = 3.1415E3;
    printf("%f\n", d);
    long double l;
    long long int ll;
    unsigned short int usi;
    char h;

    // octal
    int o1 = 017;
    printf("o = %o\nn = %d\n", o1, o1);
    
    // hexademical
    int x1 = 0xa1;
    printf("x = %x\nn = %d\n", x1, x1);

    printf("Enter you weght (kg)");
    scanf("%f", &weght);
    value = weght * 1000;
    printf("you weght in gramm: %.2f \n", value);
    return 0;
}