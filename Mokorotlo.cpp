#include <iostream>
using namespace std;

void Mokorotlo(){
    int n;
    cout << "Enter height: ";
    cin >> n;

    for (int i = 1; i <= n; i++) {
        for (int j = 0; j < i; j++) {
            cout << "*";
        }
        cout << endl;
    }
}

int main() {
    cout << "--- Mokorotlo ---" << endl;
    Mokorotlo();
    return 0;
}
