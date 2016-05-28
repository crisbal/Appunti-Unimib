Eccezioni = variazioni delle condizioni normali
Consegenze -> Cambiamento nel flusso normale
Chi crea l'eccezione? Errore del programma, richiesta del programma, evento esterno

Sincrone "involontario": impreviste, causate da elaborazioni con valori non ammissibili
Sincrono "volontarie": syscall/break
Asincrone: interrupt delle periferiche

Coprocessore 1: fa operazioni aritmetiche sul floating point
Coprocessore 0: si occupa delle eccezioni

Il Coprocessore0 ha:

* Status (???)
* Cause, tipo di eccezione
* EPC Indirizzo istruzione dove si è verificato il problema
* BadVAddr (eventuale indirizzo da/verso cui si è provato scrivere/leggere) 

Ci sono istruzioni specifiche
* mtc0 move to c0
* mfc0 move from c0


Registro Cause
* Contiene gli interrupt "pending" e il tipo di errore

Registro Status
* Interrupt enable: se 0 nessuna interruzione abilitata
* Exception level: 1 se c'è stata eccezione
* User mode: se il processore è in user o kernel mode
* Interrupt mask: gli interrupt abilitati

Break
Per il debugging
E' veramente un breakpoint


# Implementare un gestore delle eccezioni

Potrebbe essere che dopo l'eccezione posso riprendere l'esecuzione, torno quindi a EPC+4

Per le eccezioni incremento EPC per le interruzioni no!

```
.kdata

save0: word 0
save1: word 1

.ktext 0x80000180
move $k1, $at #cosa da fare sempre, $at viene usato per le pseudoistruzioni

sw $v0, save0
sw $a0, save1
```

Come capire il tipo di eccezione:

