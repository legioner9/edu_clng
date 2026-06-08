#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// {{hint}}

/*
types :: viod int long float double (long long) (long double)
printf %[?] ::

*/

// page book:: XXX

int main(void) {
    char c1 = 't';
    printf("c1 as char: %c, as int: %d\n", c1, c1);
    signed char sc = -2;
    printf("sc as char: %c, as int: %d\n", sc, sc);

    size_t size_char = sizeof(char);
    printf("sizeof(char) = %lu\n", size_char);
    printf("%d <= signed char <= %d\n", CHAR_MIN, CHAR_MAX);
    printf("%x <= signed char <= %x\n", CHAR_MIN, CHAR_MAX);
    printf("0 <= unsigned char <= %d\n", UCHAR_MAX);
    printf("0 <= unsigned char <= %x\n", UCHAR_MAX);

    size_t size_short = sizeof(short);
    printf("sizeof(short) = %lu\n", size_short);
    printf("%d <= signed char <= %d\n", SHRT_MIN, SHRT_MAX);
    printf("%x <= signed char <= %x\n", SHRT_MIN, SHRT_MAX);
    printf("0 <= unsigned char <= %d\n", USHRT_MAX);
    printf("0 <= unsigned char <= %x\n", USHRT_MAX);

    size_t size_int = sizeof(int);
    printf("sizeof(int) = %lu\n", size_int);
    printf("%d <= signed int <= %d\n", INT_MIN, INT_MAX);
    printf("%x <= signed int <= %x\n", INT_MIN, INT_MAX);
    printf("0 <= unsigned int <= %u\n", UINT_MAX);
    printf("0 <= unsigned int <= %x\n", UINT_MAX);

    size_t size_long_int = sizeof(long int);
    printf("sizeof(long int) = %lu\n", size_long_int);
    printf("%ld <= signed long int <= %ld\n", LONG_MIN, LONG_MAX);
    printf("%lx <= signed long int <= %lx\n", LONG_MIN, LONG_MAX);
    printf("0 <= unsigned long int <= %lu\n", ULONG_MAX);
    printf("0 <= unsigned long int <= %lx\n", ULONG_MAX);

    size_t size_long_long_int = sizeof(long long int);
    printf("sizeof(long long int) = %lu\n", sizeof(long long int));
    printf("%lld <= signed long long int <= %lld\n", LLONG_MIN, LLONG_MAX);
    printf("%llx <= signed long long int <= %llx\n", LLONG_MIN, LLONG_MAX);
    printf("0 <= unsigned long long int <= %llu\n", ULLONG_MAX);
    printf("0 <= unsigned long long int <= %llx\n", ULLONG_MAX);

    return 0;
}

// res::