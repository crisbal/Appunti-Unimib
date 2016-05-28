Tradurre in istruzione mips

<dmath>0010 0010 1110 1011 0000 0000 0110 0000</dmath>

I primi 6 bit indicano il tipo di operazione che voglio fare (opcode)
<dmath>001000_2 = 8_{10}</dmath>

Guardo sulla tabella e vedo che <math>8_{10
 = \text{ADDI = Add Immediate}</math>

In particolare ADDI è cosi' organizzata

Opcode(6) Source(5) Dest(5) Value(16) = 32bit  

Quindi vedo che il nostro binario viene diviso così 

<dmath>001000 10111 01011 0000000001100000<dmath>

Convertiamo tutto e ricordiamoci che nel binario prima c'è Source mentre nell'ASM prima c'è Dest

Quindi esce sta cosa

<source>addi $11, $23, 96</source>


# Da hex a istruzione

<math>0x0232502A</math>

Converto simbolo per simbolo

<dmath>0x0232502A  = 0000 0010 0011 0010 0101 0000 0010 1010</dmath>

I primi 6 bit indicano il tipo di operazione che voglio fare (opcode)
<dmath>000000_2 = 0_{10}</dmath>

Questo vuol dire che è un operazione R-type, devo guardare gli ultimi 6 bit dell'istruzione

<dmath>101010_2 = 42_{10}</dmath> 

Seguendo la mappa vedo che <math>42 = \text{slt}</math> (set less than), vediamo come è fatta.

Set register rd to 1 if register rs is less than rt , and to 0 otherwise.

## Esercizio 3

Si chiede di realizzare il programma MIPS che effettua la differenza tra i numeri 11 e 10 e posita il risultato nel registro $2, si suppone che 11 e 10 siano memorizzati in $3 e $4.

Vado a prendere la tabella, vedo come è fatto "sub" r-type

sub $2, $3, $4

Convertire poi in binario, guardando la mappa degli opcode 

## Esercizio 4

Programma che fa la somma di 4+100, e lo mette in $5, 4 è in $6

Basta usare la ADDimmediate