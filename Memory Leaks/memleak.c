#include <stdio.h>
#include <stdlib.h>

void allocate_memory() {
    int *ptr = (int *)malloc(sizeof(int));
    // Not deallocating ptr on purpose
}

int main() {
    printf("C Code with Memory Leak\n");
    allocate_memory();
    // The allocated memory is not deallocated, causing a memory leak

    return 0;
}
