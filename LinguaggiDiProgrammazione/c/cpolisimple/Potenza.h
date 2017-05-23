#ifndef _POTENZA_H
#define _POTENZA_H

struct potenza
{
    char simbolo;
    int esponente;
};
typedef struct potenza Potenza;

Potenza* potenza_crea(char simbolo, int esponente);
void potenza_stampa(Potenza* potenza);


#endif