/* two_func.c -- программа, в которой используются две функции в одном файле */
#include <stdio.h>
void builder(void); /* прототип функции в стандарте ISO/ANSI С */

int main(void)
{
    printf("I`m cry.\n");
    butler();
    printf("Yes - came on.\n");
    return 0;
}
void butler(void) /* начало определения функции */
{
    printf("Ar you cry?\n");
}