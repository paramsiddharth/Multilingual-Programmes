#include <iostream>
#include <string>
#include <locale>
using namespace std;

int main() {
    string a;
    getline(cin,a);
    int b[256] = {0};
    for (int i=0;i<(int)a.size();i++)
        b[(int)tolower(a[i])]++;
    for (char i='a';i<='z';i++)
        cout << i << " -> " << b[(int)i] << endl;
    return 0;
}
