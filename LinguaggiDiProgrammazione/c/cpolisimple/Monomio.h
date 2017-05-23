#ifndef _MONOMIO_H
#define _MONOMIO_H

#include "Potenza.h"

struct monomio{
    int coefficiente;
    Potenza* potenza;
};
typedef struct monomio Monomio;

Monomio* monomio_crea(int coefficiente, Potenza* potenza);

void monomio_stampa(Monomio* monomio);

#endif