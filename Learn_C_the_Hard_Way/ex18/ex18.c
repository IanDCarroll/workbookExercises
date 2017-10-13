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
