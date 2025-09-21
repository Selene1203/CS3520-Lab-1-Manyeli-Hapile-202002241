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
