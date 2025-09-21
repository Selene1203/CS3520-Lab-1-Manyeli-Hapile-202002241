#include <iostream>
using namespace std;

void grainCounting() {
    int litres;
    cout << "Enter litres of grain: ";
    cin >> litres;

    int makopokopo = litres / 20;
    int remainder = litres % 20;

    cout << "Makopokopo (20L): " << makopokopo << endl;
    cout << "Remaining litres: " << remainder << endl;
}

void cattleWealth() {
    int cattle;
    cout << "Enter number of cattle: ";
    cin >> cattle;
int makopokopo = litres / 20;
    int remainder = litres % 20;

    cout << "Makopokopo (20L): " << makopokopo << endl;
    cout << "Remaining litres: " << remainder << endl;
}

void cattleWealth() {
    int cattle;
    cout << "Enter number of cattle: ";
    cin >> cattle;

    if (cattle < 8) {
        cout << "Not enough for bohali" << endl;
    } else if (cattle < 30) {
        cout << "Small herd" << endl;
    } else {
        cout << "Wealthy cattle owner" << endl;
    }
}

int main() {
    cout << "--- Grain Counting (Makopokopo) ---" << endl;
    grainCounting();

    cout << "\n--- Cattle Wealth (Mahali) ---" << endl;
    cattleWealth();

    return 0;
}
