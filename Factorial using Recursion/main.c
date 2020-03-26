#include <stdio.h>

long long int fact(long long int x) {
    return (x<2)?1:x*fact(x-1);
}

int main() {
    long long int y;
    scanf("%lld",&y);
    printf("%lld",fact(y));
    return 0;
}
