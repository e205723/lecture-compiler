#include <stdio.h>
#include <arpa/inet.h>

int main() {
    unsigned short x = 12345;
    unsigned short y = htons(x);

    printf("x = %d\n", x);
    printf("y = %d\n", y);

    return 0;
}

