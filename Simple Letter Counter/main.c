#include <stdio.h>
#include <string.h>
#define MAX_STRING_SIZE 1024

int main() {
    char a[MAX_STRING_SIZE];
    scanf("%[^\n]s",a);
    int b[256] = {0};
    for (int i=0;i<strlen(a);i++) {
        if (a[i]>='A' && a[i]<='Z')
            a[i] += 32;
        b[(int)a[i]]++;
    }
    for (char i='a';i<='z';i++)
        printf("%c -> %d\n",i,b[(int)i]);
    return 0;
}
