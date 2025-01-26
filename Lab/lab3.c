
#include <stdio.h>
#include <math.h>

int main() {
    double a, b, c, x, y, ZZ;
    const double PI = 3.14;

    // Citirea valorilor pentru a, b, x și y
    printf("Introduceti valorile pentru a, b, c, x si y: ");
    scanf("%lf %lf %lf  %lf", &a, &b, &x, &y);

    // Calculul ecuației

    ZZ = (pow(M_E, -PI + pow(x, 2 + a) + pow(y, 3) + pow(c, 2)) + sqrt(pow(x, 2 + a) + pow(y, 2 + b - (pow(a, 2) - b) / pow(c, 2 + cos(pow(a, 2)))))) /
         sqrt((pow(x, -2 * a + cos(pow(x, 2)) + pow(b, 2 - pow(x, 2 + b))) / pow(x, 2) + 2 * pow(y, 2))) /
         (((x - y + pow(c, 2) / sqrt((x + pow(y, a + (cos(x) / cos(pow(y, 2))) + 2) + tan(x)) / 2 - pow(x, 2 + pow(cos(x), 2)) * pow(y, 3))) +
           ((a + b) / pow(-x, 2) + pow(b, y))));

    // Afișarea rezultatului
    printf("Rezultatul ecuatiei ZZ este: %lf\n", ZZ);

    return 0;
}
