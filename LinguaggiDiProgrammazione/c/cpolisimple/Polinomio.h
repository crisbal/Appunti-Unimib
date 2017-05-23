#ifndef _POLINOMIO_H
#define _POLINOMIO_H

#include "Monomio.h"

struct polinomio{
    Monomio** monomi; // un array di puntatori   
    int numeroMonomi;
};
typedef struct polinomio Polinomio;

Polinomio* polinomio_crea(int numeroMonomi);

void polinomio_stampa(Polinomio* polinomio);

#endif