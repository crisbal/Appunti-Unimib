#include "Potenza.h"

#include <stdio.h>
#include <stdlib.h>


Potenza* potenza_crea(char simbolo, int esponente)
{
    Potenza* potenza = (Potenza*) malloc(sizeof(Potenza)); // alloca memoria per tenere dentro potenza e dammi il puntatore
    potenza->simbolo = simbolo;
    potenza->esponente = esponente;

    return potenza;
}

void potenza_stampa(Potenza* potenza){
    printf("%c^%d", potenza->simbolo, potenza->esponente);
}