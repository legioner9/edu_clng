#include <stdio.h>

int main()
{
    int n, n2, n3;
    printf("Enter int 'n'\n");
    scanf("%d", &n);
    printf("You enter int %d\n", n);
    n2 = n * n;
    n3 = n2 * n;
    printf("n = %d, n_qvad = %d, n_qub = %d \n", n, n2, n3);
    return 0;
}