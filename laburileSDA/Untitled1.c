#include <stdio.h>

    void meniu(int arr,int Tab);
    void Afisare_Matrice_mxn(int Tab);
    void Matricie_null_nxn(int arr);
    void Matricie_null_mxn(int Tab);
    void Matricie_orientat(int Tab);
    void Matricie_neorientat(int arr);
    void Afisare_matricie_nxn(int arr);

int main() {
    int arr[9][9];
    int Tab[16][9];

    meniu(arr,Tab);

    return 0;
}

void meniu( int arr, int Tab) {
    int option;

    printf("\n--------Lista de optiuni--------\n"
           "1. Egalarea matriciei patratica cu zero\n"
           "2. Egalarea matriciei MxN cu zero\n"
           "3. Introducerea varfurilor adiacente\n"
           "4. Introducerea varfurilor indiacente\n"
           "5. Afisarea matriciei Orientata\n"
           "6. Afisarea matriciei Indiacenta\n"
           "0. Iesire din program\n");

    printf("Selectati si introduceti nr optiunii dorite: ");
    scanf("%i", &option);

    switch (option) {
        case 0: {
            printf("Se efectueaza iesire din program...");
            break;
        }
        case 1: {
         void Matricie_null_nxn(arr);
         meniu(arr,Tab);
            break;
        }
        case 2: {
           void Matricie_null_mxn( Tab);
           meniu(arr,Tab);
            break;
        }
        case 3: {
            void Matricie_orientat(Tab);
            meniu(arr,Tab);
            break;
        }
        case 4: {
            void Matricie_neorientat(arr);
            meniu(arr,Tab);
            break;
        }
        case 5: {
            void Afisare_Matrice_mxn(Tab);
            meniu(arr,Tab);
            break;
        }
        case 6: {
             void Afisare_matricie_nxn( arr);
             meniu(arr,Tab);
            break;
        }
        default: {
            printf("\n-----------Nu exista optiunea!!!-----------\n");
            meniu(arr,Tab);
        }
    }
}
    void Afisare_Matrice_mxn(int Tab){

     for(int i=0;i<16;i++){
        for(int j=0;j<9;j++){
             printf("%d",Tab[i][j]);
        }
     }
    }
    void Matricie_null_nxn(int arr){
    for(int i=0;i<9;i++){
        for(int j=0;j<9;j++){
        arr[i][j]=0;
     }
    }
    }
    void Matricie_null_mxn(int Tab){
    for(int i=0;i<16;i++){
        for(int j=0;j<9;j++){
        Tabi][j]=0;
        }
        }
    }
    void Matricie_orientat(int Tab){
    int k,j;
        printf("Introduceti pozitia punctului initial si final ");
        scanf("%d %d",&i,&k);
        for(inti=0;i<16;i++){
         Tab[i][j]=-1;
         Tab[i][k]=1;
        }

    }
    void Matricie_neorientat(int arr){
        int i,j;
        printf("Introduceti pozitia varfurilor  ");
        scanf("%d %d",&i,&j);
        arr[i][j]=1;
        arr[i][j]=arr[j][i];

    }
    void Afisare_matricie_nxn(int arr){
         for(int i=0;i<9;i++){
        for(int j=0;j<9;j++){
             printf("%d",arr[i][j]);
             }
        }
    }

