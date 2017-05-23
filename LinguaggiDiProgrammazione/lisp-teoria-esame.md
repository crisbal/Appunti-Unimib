# Activation Frame

L'activation frame è una struttura dati che viene creata e posta sullo stack del programma in esecuzione ogni qualvolta viene chiamata una funzione (PUSH). Nel momento in cui la funzione ritorna/completa viene rimosso dallo stack l'activation fram corrispondente (POP).
Il LISP la chiamata della funzione corrisponde alla valutazione di questa.
La struttura dell'activation frame varia sia in base all'architettura che in base al linguaggio che stiamo usando, ma in generale questi sono gli elementi che più spesso troviamo:

* il valore dei registri al momento della chiamata
* l'indirizzo di ritorno
* il valore per i parametri/argomenti della funzione
* variabili locali (o meglio spazio allocato per le variabili locali)
* valore di ritorno (o meglio spazio allocato per il valore di ritorno)ù
* static link, che indica dove la funzione è stata chiamata
* dynamic link, che indica dove la funzione è stata definita

# Lambda expression

Una lambda expression è anche detta funzione anonima. E' detta anonima perchè non ha nome. In LISP è possibile definire una lambda expression con questa sintassi:
`(LAMBDA (X1 ... Xn) (ESPRESSIONE))`

Ogni qualvolta una funzione accetta come parametro il nome di un altra funzione possiamo anche passare una lambda expression.

Per applicare una lambda expression è conveniente usare la sintassi:
`((LAMBDA ...) P1 ... Pn)`

Sono particolarmente utili se usate con le funzioni di ordine superiore (tipo `mapcar`, `apply`, `filter`).

Per la valutazione e la definizione di lambda expression è richiesta una particolare struttura dati: la "chiusura" / "closure".

# Espressioni autovalutanti

Le espressioni autovalutanti sono particolari espressioni il cui valore è semplicemente quello espresso dalla propria rappresentazione. Numeri, stringhe, booleans (T e NIL) e lambda expression sono tutte espressioni autovalutanti. Il LISP non deve quindi chiamare alcuna funzione o attuare alcuna trasformazione per capirne il valore associato. 

# CONS

La CONS è una tra le funzioni fondamentali del LISP. La funzione CONS alloca in memoria lo spazio per una CONS-CELL, una struttura dati che è formata da una coppia di puntatori. I puntatori possono puntare ad altre CONS-CELL (ed è cosi' che costruiamo le liste in LISP) oppure a valori.

Visto che la CONS alloca memoria e il LISP, essendo un linguaggio di alto livello e anche funzionale, non vuole lasciare la gestione della memoria all'utente, l'ambiente di esecuzione deve prendersi cura della garbage collection, l'operazione che libera la memoria dalle CONS-CELL non più usate, evitando che la memoria si riempia completamente, rendendo impossibile il proseguimento dell'esecuzione.

# Ricorsione in testa e in coda

Le funzioni ricorsive possono essere distinte in due categorie: quelle ricorsive in testa e quelle ricorsive in coda. 

Nella ricorsione in testa la chiamata ricorsiva avviene prima di altre operazioni da parte della funzione chiamante. Nella ricorsione in coda la chiamata ricorsiva è l'ultima operazione eseguita dalla funzione chiamante. 

Questa differenza può sembrare minimale ma è in realtà fondamentale per quanto riguarda l'ottimizzazione del codice da parte del compilatore. Una funzione ricorsiva in coda può essere trasformata in un semplice loop, eliminando completamente la necessità di costruire activation frame, pusharli nello stack, passare il controllo alla funzione chiamata, riottenere il controllo, poppare l'activation frame. Questa tipologia di ricorsione è quindi più performante.

[Più info](http://stackoverflow.com/questions/21426688/the-difference-between-head-tail-recursion)

```
public void tail(int n)              public void head(int n)
{                                    {
   if(n == 1)                           if(n == 0)
      return;                               return;
   else                                 else
      System.out.println(n);                head(n-1);

   tail(n-1);                           System.out.println(n);
}                                    }
```

Esempio in LISP:

Ricorsione in testa:

```
(defun fattoriale(n)
    (if (= n 0)
     1
     (* n (fattoriale (- n 1)))))

```

Ricorsione in coda:

```
(defun fattoriale(n acc)
    (if (= n 0)
     acc
     (fattoriale (- n 1) (* n acc))))
```

# Quali sono le tre fasi che permettono di applicare il paradigma funzionale?

???????????

# Programmazione Funzionale

* Basata sul concetto di trasparenza referenziale: il significato del tutto si può determinare dal significato delle parti
* Mi rende possibile sostituire dei valori con degli altri, a patto che denotino la stessa cosa
* I programmi sono funzioni matematiche, ci sono funzioni primitive che vengono composte tra loro per ottenere funzioni più complesse: viene mantenuta la trasparenza referenziale.
* Elementi linguaggio funzionale:
  * Espressioni (funzioni primitive e non)
  * Metodologie di composizione di funzioni
  * Costrutti per astrarre gruppi di espressioni
  * Operatori speciali


Una funzione è una regola per associare gli elementi di un insieme (il dominio) a quelli di un altro insieme (codominio).
Nei linguaggi funzionale possiamo utilizzare anche operatori speciali all'interno delle funzioni, costrutti come `if-then-else`.
La programmazione funzionale (fatta correttamente) non produce "effetti collaterali". Il calcolo procede valutando espressioni e attraverso la trasparenza referenziale.

# Valutazione di funzioni

Mediante la costruzione di activation frames.
I parametri formali vengono associati al loro valore, tutto è passato per valore!
Ad ogni sotto-espressione si sostituisce il valore che esso rappresenta (quindi si richiamano le sotto-espressioni)
Il valore restituito da ogni sotto-espressione viene messa nel corpo della espressione che la contiene al posto dell'espressione stessa.
Quando il valore viene ritornato l'activation frame viene rimosso attraverso un "pop" dallo stack.

Per valutare una funzione:

* mettere i parametri in "un posto" dove la procedura puo' recuperarli
* trasfrire il controllo alla procedura
* allocare le risorse della procedura
* computare la procedura
* mettere il risultato in "un posto" accessibile al chiamante
* restituire il controllo al chiamante 