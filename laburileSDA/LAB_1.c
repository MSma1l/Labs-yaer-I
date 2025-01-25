    # include <stdio.h>
    # inclide <stdlib.h>
    # include <stdbool.h>
    # include <time.h>

        void meniu(int **a,int n);
        void citire(int **a,int n);
        void alocare(int **a,int n);
        void afisare(int **a,int n);
        void random_arr(int **a,int n);
        void sortare_bubble1Dcres(int arr[],int n);
        void sortare_selection1Dcres(int arr[],int n);
        void sortare_insertion1Dcres(int arr[],int n);
        int  sumaCifrelor(int numar);
        void fornew1D(int **a,int arr[],int k,int index );
        void freemem2D(int **a,int n);
        void freemem1D(int **a,int n);
        void afisare1D(int arr[],int index);
        void sortare_bubble1Ddesc(int arr[],int n);
        void sortare_selection1Ddesc(int arr[],int n);
        void sortare_insertion1Ddesc(int arr[],int n);

        int main () {

        int n,k,numar, **a=NULL;

            printf("----------Introduceti dimensiunile la ARRRAY!!!------- : ");
            printf("Dati nr de linii si coloane n:");
            scanf("%i,&n");
            printf("Dati suma numerilor k:");
            scanf("%i,&k");
            int arr[n];
            int index=0;

            meniu(arr,n);

        return 0;
        }
        void meniu(int **a,int n){

         int option;

        printf("\n--------Lista de optiuni--------\n
            "1. Alocarea dinamica a memoriei\n"
            "2. Introducerea elementelor tabloului de la tastatura\n"
            //"3. Completarea tabloului cu valori aleatorii\n"
            "3. Elemente random pentru 2D\n"
            "4. Sortarea elementelor tabloului Bubble sort crescator\n"
            "5.Sortarea elementelor tabloului Bubble sort descrescator\n"
            "6. Sortarea elementelor tabloului Selection sort crescator\n"
            "7. Sortarea elementelor tabloului Selection sort descrescator\n"
            "8. Sortarea elementelor tabloului Insertion sort crescator\n"
            "9. Sortarea elementelor tabloului Insertion sort descrescator\n"
            "10. Afisarea elementelor tabloului la ecran 2D\n"
            "11. Afisarea elementelor tabloului la ecran 1D\n"
           // "13. Afisarea elementelor tabloului la ecran\n"
           // "14. Afisarea elementelor tabloului la ecran\n"
            "0. Iesire din program\n");");

        printf("Selectati si introduceti nr optiunii dorite: ");
            scanf("%i", &option);

            switch(option)
             {
                case 0:{
                    printf("se efectueaza iesire din program...");
                    freemem2D(a,n);
                    freemem1D(arr,n);
                    exit(1);
                    break;
        }
                case 1:{
                    alocare(a, n);
                    break;
                }
                case 2:{
                    citire2D(a, n);
                    meniu(a,n);
                    break;
                }
                case 3:{
                    random_arr2D(a, n);
                    meniu(a,n);
                    break;
                }
                case 4:{
                     sortare_bubble1Dcres(arr,n);
                     meniu(arr,n);
                     break;
                }
                 case 5:{
                     sortare_bubble1Ddesc(arr,n);
                     meniu(arr,n);
                     break;
                }
                case 6:{
                     sortare_selection1Dcres(arr,n);
                     meniu(arr,n);
                     break;
                }
                 case 7:{
                     sortare_selection1Ddesc(arr,n);
                     meniu(arr,n);
                     break;
                }
                 case 8:{
                     sortare_insertion1Dcres(arr,n);
                     meniu(arr,n);
                     break;
                }
                 case 9:{
                     sortare_insertion1Ddesc(arr,n);
                     meniu(arr,n);
                     break;
                }
                case 10:{
                    afisare2D(a, n);
                    break;
                }
                   case 11:{
                     afisare1D(arr,n);
                     break;
                }
                default:
                    {printf("\n-----------Nu exista optiunea!!!-----------\n");
                    meniu(a, n);
                }
             }
    }
        void alocare(int **a,int n){
        a=malloc (n*sizeof(int*));
        for(int i=0; i<n;i++){
            a[i]=calloc(n,sizeof(int));
        }
        if (a==NULL){
            printf(" Eroare.Nu s-a alocat memorie.\n");
            exit(1);
        }
        else{
            printf{"Succes.\n"};
            meniu(a,n);
        }
        }
        void citire(int **a,int n){

            for(int i=0;i<n;i++){
                for(int j=0;i<n;j++){
                    scanf("%i",&a[i][j]);
                    meniu(a,n);
                }
            }
        }
        void afisare(int **a,int n){

            for{int i=0;i<n;i++}{
                for(int j=0;j<n;j++){
                    printf("%i",a[i][j]);
                    printf("\n");
                }
            }
        }
        void random_arr(int **a,int n){

            scanf(time(NULL));
             for(int i=0;i<n;i++){
                for(int j=0;j<n;j++){
                    a[i][j]=radom()%100;
                }
             }
             printf("Tabloul a fost complectac cu valori aleatorii <<100%>>");
             meniu(a,n);
        }
        void sortare_bubble1Dcres(int arr[],int n){

            int aux;

                for(int=0;i<n;i++){
                    for(int j=0;j<n;j++){
                       if (a[j>a[j+1]){
                            aux=a[j];
                            a[j]=a[j+1];
                            a[j+1]=aux;

                        }
                    }

            printf("\n------------Tablou sortat <<100%>>--------\n");
        }
        }
        void    sortare_insertion1Dcres(int **arr,int n){

            int key, j;
                for (int i = 1; i < n; i++) {
                    key = arr[i];
                    j = i - 1;

            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j = j - 1;
        }
                arr[j + 1] = key;
    }
}

        }
        void sortare_selection1Dcres(int arr[],int n){
              int j, minIndex, temp;
    for (int i = 0; i < n - 1; ++i) {
        minIndex = i;

        // Găsim indexul minim în restul vectorului
        for (j = i + 1; j < n; ++j) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j;
            }
        }

        // Schimbăm elementele dacă nu sunt în ordine
        temp = arr[minIndex];
        arr[minIndex] = arr[i];
        arr[i] = temp;
    }
}
        int  sumaCifrelor(int numar){

                int suma = 0;
                    while (numar != 0) {
                        suma += numar % 10;
                        numar /= 10;
            }
                        return suma;
        }
        void fornew1D(int **a,int arr[],int k,int index ){

             for (int i = 0; i < n; ++i) {
                for (int j = 0; j < n; ++j) {
                    if (sumaCifrelor(a[i][j]) == k) {
                        arr[index++] = a[i][j];
            }
        }
    }

        }
        void freemem2D(int **a,int n){

            for(int i=0;i<n;i++)
                free(a[i]);
            free(a);
        }
        void afisare1D(int **arr,int index){

                for(int i=o;i<index;i++){
                    printf("%i",arr[i]);
                }
        }
        void freemem1D(int **arr,int n){

            for(int i=0;i<n;i++)
                free(arr);
        }
        void sortare_bubble1Ddesc(int arr[],int n){
             int temp;
    for (int i = 0; i < n - 1; ++i) {
        for (int j = 0; j < n - i - 1; ++j) {
            if (arr[j] < arr[j + 1]) {
                // Schimbăm elementele dacă nu sunt în ordine descrescătoare
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}
        void sortare_selection1Ddesc(int arr[],int n){
             int maxIndex, temp;
    for (int i = 0; i < n - 1; ++i) {
        maxIndex = i;

        // Găsim indexul maxim în restul vectorului
        for (int j = i + 1; j < n; ++j) {
            if (arr[j] > arr[maxIndex]) {
                maxIndex = j;
            }
        }

        // Schimbăm elementele dacă nu sunt în ordine descrescătoare
        temp = arr[maxIndex];
        arr[maxIndex] = arr[i];
        arr[i] = temp;
    }
}
        void sortare_insertion1Ddesc(int arr[],int n){
              int key, j;
    for (int i = 1; i < n; i++) {
        key = arr[i];
        j = i - 1;

        // Mută elementele mai mici decât key în spate
        while (j >= 0 && arr[j] < key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
}
