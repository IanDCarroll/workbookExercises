#include<stdio.h>
#include<stdlib.h>
#include<errno.h>
#include<string.h>

typedef int (*compare_cb) (int a, int b);
int *bubble_sort(int *numbers, int count, compare_cb cmp);
void test_sorting(int *numbers, int count, compare_cb cmp);
void die(const char *message);

int main(int argc, char *argv[]) {
    if (argc < 2) die("USAGE: ex18 4 3 1 5 6");

    int count = argc - 1;
    int i = 0;
    char **inputs = argv + 1;

    int *numbers = malloc(count * sizeof(int));
    if (!numbers) die("Memory error.");

    for (i = 0; i < count; i++) {
        numbers[i] = atoi(inputs[i]);
    }

    //test_sorting

    free(numbers);
    return 0;
}

void die(const char *message) {
    if (errno) {
        perror(message);
    } else {
        printf("ERROR: %s\n", message);
    }
    exit(1);
}

void test_sorting(int *numbers, int count, compare_cb cmp) {
    int *sorted = numbers; //buble sort

    if(!sorted) die("Failed to sort as requested");

    int i = 0;
    for (i = 0; i < count; i++) {
        printf("%d ", sorted[i]);
    }
    printf("\n");

    free(sorted);
}
