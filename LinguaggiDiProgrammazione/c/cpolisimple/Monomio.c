#include "Monomio.h"

#include <stdio.h>
#include <stdlib.h>

#include "Potenza.h"

Monomio* monomio_crea(int coefficiente, Potenza* potenza)
{
    Monomio* monomio = (Monomio*) malloc(sizeof(Monomio)); // alloca memoria per tenere un monomio e dammi il puntatore a quella area di memoria
    monomio->coefficiente = coefficiente;
    monomio->potenza = potenza;

    return monomio;
}

void monomio_stampa(Monomio* monomio)
{
    printf("%d*", monomio->coefficiente);
    potenza_stampa(monomio->potenza);
}