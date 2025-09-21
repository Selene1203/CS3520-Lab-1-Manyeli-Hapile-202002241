#include <iostream>
using namespace std;

void sesothoDays() {
    int day;
    cout << "Enter day number (1-7): ";
    cin >> day;

    string days[7] = {
        "Mantaha",    // Monday
        "Labobeli",   // Tuesday
        "Laboraro",   // Wednesday
        "Labone",     // Thursday
        "Labohlano",  // Friday
        "Moqebelo",   // Saturday
        "Sontaha"     // Sunday
    };

    if (day >= 1 && day <= 7) {
        cout << "Sesotho Day: " << days[day - 1] << endl;
    } else {cout << "Error: Invalid day number!" << endl;
    }
}

int main() {
    cout << "--- Sesotho Calendar Days ---" << endl;
    sesothoDays();
    return 0;
}
