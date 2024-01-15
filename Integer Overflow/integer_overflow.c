#include <limits.h>
#include <stdio.h>

int main() {
    int a = INT_MAX;
    int b = 1;
    a = a + b;
    printf("The value of a is: %d\n", a);
    return 0;
}
