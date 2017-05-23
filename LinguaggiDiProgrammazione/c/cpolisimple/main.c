#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "Potenza.h"
#include "Monomio.h"
#include "Polinomio.h"

#define PI ciao

struct esempio {
    int a;
    float b;
}; 

int raddoppia(int x){
    return x*2;
}
int triplica(int x){
    return x*3;
}

int mapcar(int* array, int (*lafunz)(int)){
    for (int i = 0; i < 3; ++i)
    {
        array[i] = (*lafunz)(array[i]);
    }
}

int main()
{

    printf("SONO QUI\n" );
    int test[] = {1,2,3}; 
    mapcar(test, &raddoppia);
    printf("SONO QUI\n" );

    for (int i = 0; i < 3; ++i)
    {
        printf("%d", test[i]);
    }
    printf("SONO QUI\n" );
    
    mapcar(test, &triplica);
    for (int i = 0; i < 3; ++i)
    {
        printf("%d", test[i]);
    }
    printf("SONO QUI\n" );
    
    int array[12];
    int* array2;
    array2 = (int*) malloc(sizeof(int) * 5); 

    int array3[] = {1, 2, 3};
    printf("%d\n", *(array3+1));
    printf("%d\n", array3[1]);

    int *a = (int*) malloc(sizeof(int));
    *a = 12;
    printf("%d\n", a[0]);

    Potenza* potenza = potenza_crea('x', 2);
    potenza_stampa(potenza);

    int len;
    scanf("%d", &len);
    int ciao[len];

    printf("\n");

    Monomio* monomio = monomio_crea(42, potenza);
    monomio_stampa(monomio);
    printf("\n");

    Monomio* monomio2 = monomio_crea(69, potenza_crea('y', 3));
    monomio_stampa(monomio2);
    printf("\n");

    Polinomio* poli = polinomio_crea(2);
    poli->monomi[0] = monomio;
    poli->monomi[1] = monomio2;
    polinomio_stampa(poli);

    return 0;
}