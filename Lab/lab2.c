
#include <stdio.h>
#include <math.h>

int main() {
    double a, x, y, S;
    const double PI = 3.14;

    // Citirea valorilor pentru a, x și y
    printf("Introduceti valorile pentru a, x si y: ");
    scanf("%lf %lf %lf ", &a, &x, &y);

    // Calculul ecuației

    S = (x + y - (cos(12) / cos(pow(y, 2)))) / (PI + sin(1001) * sin(pow(a, 2)));

    // Afișarea rezultatului
    printf("Rezultatul ecuatiei S este: %lf\n", S);

    return 0;
}
