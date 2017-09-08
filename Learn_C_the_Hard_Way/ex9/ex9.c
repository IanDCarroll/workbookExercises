#include <stdio.h>

int main(int argc, char *argv[]) {
    int i = 25;
    while (i > 0) {
        i--;
        if (i%2 == 0) { continue; }
        if (i == 5) { break; }
        printf("%d\n", i);
    }
    return 0;
}
