#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char buffer1[50] = "This is a buffer overflow!";
    char* buffer;
    int d = 0;
    printf("Enter the buffer size: ");
    scanf("%d", &d);
    buffer = malloc(d * sizeof(char));
    memcpy(buffer, buffer1, sizeof(buffer1) / sizeof(char));
    printf("%s\n", buffer);
    return 0;
}
