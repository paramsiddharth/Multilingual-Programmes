#include <iostream>
using namespace std;

long long int fact(long long int x) {
    return (x<2)?1:x*fact(x-1);
}

int main() {
    long long int y;
    cin >> y;
    cout << fact(y) << endl;
    return 0;
}
