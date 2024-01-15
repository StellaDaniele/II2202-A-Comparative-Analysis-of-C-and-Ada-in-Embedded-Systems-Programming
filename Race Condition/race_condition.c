#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define NUM_THREADS 10
#define ITERATIONS 10000

int shared_counter = 0;

void *increment_counter(void *arg) {
    for (int i = 0; i < ITERATIONS; ++i) {
        shared_counter++;
        sleep(0.05);
    }
    pthread_exit(NULL);
}

int main() {
    pthread_t threads[NUM_THREADS];

    for (int i = 0; i < NUM_THREADS; ++i) {
        if (pthread_create(&threads[i], NULL, increment_counter, NULL) != 0) {
            fprintf(stderr, "Error creating thread\n");
            exit(EXIT_FAILURE);
        }
    }

    for (int i = 0; i < NUM_THREADS; ++i)
        pthread_join(threads[i], NULL);

    printf("Final value of the shared counter: %d\n", shared_counter);

    return 0;
}
