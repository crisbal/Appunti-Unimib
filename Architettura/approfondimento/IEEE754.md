# IEEE754

Precisione singola (32bit) e doppia (64bit)

## Struttura

* 1bit: segno
* 8bit (o 11bit): segno, eccesso 127
* 23bit (o 52bit): esponente

## Forma Normalizzata

Una frazione normalizzata iniza con un "1." implicito seguito da 23 o 52 bit. Se tutti i 23 o 52 bit sono a zero la frazione ha valore 1.0. Se tutti sono a 1 la frazione ha valore numerico inferiore di 2.0. 

I 23 (o 52) bit sono detti significandi e insieme all'"1." rappresentano un valore  $1 \leq s < 2$.

### Estremi

* Numero più grande: esponente tutto a 1 tranne l'ultimo bit, frazione tutto a 1
** $2 * 2^{127}$ circa
* Numero più piccolo: esponente tutto a 0 tranne l'ultimo bit, frazione tutto a 0
** $1.0 * 2^{-126}$ esatti

## Forma Denormalizzata

Potrebbe esserci la necessità di rappresentare numeri talmente piccoli in seguito all'esecuzione di operazioni di calcolo, talmente piccoli che non potrebbero essere rappresentati in IEEE754. Per questo sono stati inventati i  numeri denormalizzati. 

In questi numeri l'esponente è sempre messo a 0 (l'esponente a 0 è l'unica caratteristica che distingue un numero non normalizzato da uno normalizzato). L'"1." implicito diventa "0." nei numeri denormalizzati. 

### Estremi

* Numero più grande: esponente per forza tutto a 0, frazione tutto a 1
** un po' più piccolo di $2^{-126}$
* Numero più piccolo: esponente per forza tutto a 0, frazione tutto a 0 tranne l'ultimo bit
** $10^{-45} = 2^{-149}$

## Rappresentazioni speciali

### Infinito

E' usata al posto dell'overflow. Esponente tutto a 1 e frazione a 0. Questo valore può essere usato come operando.

### Not a Number

Detto anche NaN. Esponente tutto a 1 e frazione ad un numero diverso da 0. Questo valore può essere usato come operando.

### Zero

Il numero zero è rappresentato dai bit dell'esponente e della frazione tutti a 0. Formalmente è un numero denormalizzato.  


## Operazioni

### Somma

* Porto il numero con esponente più piccolo in esponente più grande
* Sommo le due parti frazionarie
* Converto in notazione scientifica