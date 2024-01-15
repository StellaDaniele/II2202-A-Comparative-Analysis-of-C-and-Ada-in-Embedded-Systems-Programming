#include <stdio.h>
#include <string.h>

int main() {
    char buffer[10];
    strcpy(buffer, "This is a buffer overflow!");
    printf("%s\n", buffer);
    return 0;
}
