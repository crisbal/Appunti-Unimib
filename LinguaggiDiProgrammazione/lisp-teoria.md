# Lisp

Nella programmazione imperativa i programmi computano modificando lo stato della memoria.
	* Concetto di assegnamento di valore ad una variabile
	* Concetto di sequenza di istruzioni
	* Possibili problemi: effetti collaterali, modifico lo stato della memoria a cui magari accedono altre parti del programma; diventa difficile capire se una chiamata ad una funzione cambia lo stato della memoria globale, diventa difficile verificare se il programma funzione.
Nella programmazione funzionale i programmi computano combinando "valori" che sono trasformati da chiamate a funzioni.
Nella programmazione dichiarativa i programmi computano verificando asserzioni.

## Programmazione Funzionale

* Basati sul concetto di trasparenza referenziale: il significato del tutto si può determinare dal significato delle parti
* Mi rende possibile sostituire valori con altri, a patto che denotino la stessa cosa
* I programmi sono funzioni matematiche, ci sono funzioni primitive che vengono composte tra loro per ottenere funzioni più complesse: viene mantenuta la trasparenza referenziale.
* Elementi linguaggio funzionale:
  * Espressioni (funzioni primitive e non)
  * Metodologie di composizione di funzioni
  * Costrutti per astrarre gruppi di espressioni
  * Operatori speciali

Una funzione è una regola per associare gli elementi di un insieme (il dominio) a quelli di un altro insieme (codominio).
Nei linguaggi funzionale possiamo utilizzare anche operatori speciali all'interno delle funzioni, costrutti come if-then-else
La programmazione funzionale (fatta correttamente) non produce "effetti collaterali". Il calcolo procede valutando espressioni e attraverso la trasparenza referenziale.

Le funzioni sono oggetti "di prima classe". 

In informatica, si definisce trasparente referenzialmente una funzione che non ha effetti collaterali e che quando riceve lo stesso parametro in input, restituisce sempre lo stesso valore.

In LISP c'è equivalenza tra programmi e dati.
In LISP c'è differenza tra Atomo e Cons-Cell
Gli atomi sono simboli, numeri, stringhe etc
Le Cons-Cell sono i non-atomi (e quindi le liste)

Le cons-cell, i numeri, i simboli e le stringhe rappresentano le Simbolic Expressions, e sono dette anche Sexps.

Data una sexp:
* Se e' un atomo 
  * Se e' un numero ritorna il suo valore
  * Se e' una stringa ritorna la stringa
  * Se e' un simbolo ritorna il valore associato nell'ambiente corrente (oppure errore se non c'è un valore associato)
* Se e' una cons-cell
  * Se inizia con un operatore speciale allora valuta la lista in mdoo speciale
  * Se inizia con una funzione allora applica la funzione alla lista tramite `apply`
  * Se il primo simbolo è una lambda expression il resto viene applicata alla lambda
  * Altrimenti Errore


### Valutazione di funzioni
Mediante la costruzione di activation frames 
I parametri formali vengono poi associati al loro valore proprio, tutto è passato per valore!
Ad ogni sotto-espressione si sostituisce il valore che esso rappresenta (quindi si chiamano le funzioni dentro ricorsivamente)
Il valore restituito da ogni sotto-espressione viene messa nel corpo della espressione che la contiene al posto dell'espressione stessa.
Quando il valore viene ritornato l'activation frame viene rimosso attraverso un "pop".

Per valutare una funzione:
* mettere i parametri in "un posto" dove la procedura puo' recuperarli
* trasfrire il controllo alla procedura
* allocare le risorse della procedura
* computare la procedura
* mettere il risultato in "un posto" accessibile al chiamante
* restituire il controllo

Si fa tutto ciò tramite lo stack
In particolare c'è da fare spazio per salvare:
* indirizzo di ritono
* registri della CPU
* variabili, definizioni locali, valori di ritorno
* parametri
* static link (dove viene definita una funzione)
* dynamic link (quando viene chiamata)

Il lisp permette di definire funzioni definite a runtime (dette closures) dette cosi' perchè "chiudono" i valori delle variabili libere. Queste funzioni anonime sono definite con LAMBDA.

### `cond`
La cond è un operatore speciale.

### ricorsione
Tutti gli algoritmi ciclici possono essere trasformati in funzioni ricorsive: non è vero il contrario.

Le funzioni tail-ricorsive sono dei "cicli in incognito", non è necessario creare un altro record di attivazione quando si scrivono funzioni tail-ricorsive.

Una funzione è tail-ricorsiva quando l'ultima operazione fatta è la ricorsione.

### cons-cells
Una cons-cell è una coppia di puntatori e ciascuno punta ad un elemento
La funzione cons alloca la memoria necessari a tenere i dati

Se nella cons c'è NIL allora non c'è il puntatore. 

