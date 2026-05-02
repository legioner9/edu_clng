#include <stdio.h>
#include <string.h>
#define DENSITY 1.12 // плотность человека
#define CONST_STR "You brave)))\n"
// page book:: 118

int main()
{
    float weght, volume;
    size_t size;
    size_t letters;
    char name[40];

    printf("What is you name? : ");
    scanf("%s", name);

    printf("%s you weght? : ", name);
    scanf("%f", &weght);

    // size of byte
    size = sizeof name;

    // strlen of char
    letters = strlen(name);
    volume = weght / DENSITY;

    printf("%s, you volume : %f\n", name, volume);
    printf("name is %zd letters , in heap will by headed %zd byte for you name.\n%s", letters, size, CONST_STR);

    return 0;
}