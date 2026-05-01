#include <stdio.h>

// page book:: 080

int main()
{
    float weght; //
    float value; //

    printf("Enter you weght (kg)");
    scanf("%f", &weght);
    value = weght * 1000;
    printf("you weght in gramm: %.2f \n", value);
    return 0;

}