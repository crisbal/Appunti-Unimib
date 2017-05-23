#include "Polinomio.h"

#include <stdio.h>
#include <stdlib.h>

#include "Monomio.h"

Polinomio* polinomio_crea(int numeroMonomi)
{
    Polinomio* polinomio = (Polinomio*) malloc(sizeof(Polinomio));
    polinomio->numeroMonomi = numeroMonomi;
    polinomio->monomi = (Monomio**) malloc(sizeof(Monomio) * numeroMonomi);
    return polinomio;
}

void polinomio_stampa(Polinomio* polinomio){
    for (int i = 0; i < polinomio->numeroMonomi; i++)
    {
        printf(" + ");
        monomio_stampa(polinomio->monomi[i]);
    }
}