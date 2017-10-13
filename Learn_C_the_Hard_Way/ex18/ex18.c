#include<stdio.h>
#include<stdlib.h>
#include<errno.h>
#include<string.h>

typedef int (*compare_cb) (int a, int b);
int *bubble_sort(int *numbers, int count, compare_cb cmp);
void test_sorting(int *numbers, int count, compare_cb cmp);
void die(const char *message);

int main(int argc, char *argv[]) {
   return 0;
}
