# Logica Predicativa

Con la logica proposizionale non tutti i concetti e le argomentazioni possono essere espressi, in quanto la validità dell'argomento dipende direttamente dalle relazioni che sussistono tra i *costituenti* delle proposizioni.

Grazie alla logica predicativa possiamo:

* Riferirci a concetti e a individui in particolare
* Fare affermazioni particolari o universali, senza per forza far riferimento a individui specifici.

La logica predicativa prende anche il nome di linguaggio di primo ordine. 

Concetti esclusivi alla logica di primo ordine sono, ad esempio, i quantificatori (tutti, alcuno, uno solo).


## Sintassi logica predicativa

Un linguaggio logico predicativo è costruito sui seguenti simboli logici (immutabili):

* Connettivi proposizionali unari (\neg) e binari ($\land,\lor,\implies,\iff$)
* Costanti proposizionali \top e \bot (per denotare Vero e Falso)
* Il simbolo di uguaglianza (non sempre presente) $=$ 
* I simboli separatori '(', ')' e ','
* Un infinità numerabile di simboli di variabile individuale ($x1, x2, x3, ...$)
* Il simbolo di quantificatore universale \forall
* Il simbolo di quantificatore esistenziale \exists

e sui seguenti parametri (esclusivi al linguaggio logico predicativo):

* Un insieme finito/numerabile di parametri e simboli di predicato, ognuno dei quali ha associato un intero positivo n detto arità 
* Un insieme finito/numerabile di simboli di funzione, ognuno dei quali ha associato un intero positivo detto arità
* Un insieme finito/numerabile di simboli di costante

Volendo è possibile definire connettivi e componenti al linguaggio logico appena presentato, o addrittura rimuoverne alcuni (perchè ad esempio \exists = \not \forall \not).

### Esempi di linguaggi logici predicativi

**Linguaggio della teoria degli insiemi**

Uguaglianza: è presente (due insiemi possono essere uguali)

Simboli di predicato: \in

Simbolo di costante: \emptyset

Simboli di funzione: nessuno

**Linguaggio della teoria dei numeri**

Uguaglianza: è presente (due numeri possono essere uguali)

Simboli di predicato: \lt \gt

Simbolo di costante: 0

Simboli di funzione: s (funzione unaria per trovare il successivo di un numero) e + e - (simboli binari per addizione e sottrazione) 


### Espressioni Legali del Linguaggio

Con espressioni legali del linguaggio si intendono tutte le formule di un linguaggio $L$. Il concetto di espressione legale è strettamente collegato (se non uguale) a quello di formula ben formata.

Per prima cosa definiamo i termini e le formule atomiche.

**Termini**

L'insieme $TERM$ dei termini di $L$ è l'insieme induttivo definito in questo modo:

* Ogni simbolo di costante e di variabile è un termine
* Se *t1...tn* sono termini ed *f* è un simbolo di funzione n-aria, allora $f(t1,...,tn)$ è un termine

L'insieme $ATOM$ delle formule atomiche è definito in questo modo:

* \top e \bot sono atomi
* se t1 e t2 sono atomi allora t1 = t2 è un atomo
* se *t1,...,tn* sono termini e *P* è un simbolo di predicato a n argomenti, allora $P(t1,...,tn)$ è un atomo

Definiamo ora le formule ben formate di un linguaggio logico predicativo, cioè l'insieme di espressione che possono essere costruite combinando termini e atomi attraverso connettivi e quantificatori.

**FBF**

L'insieme delle formule di L è l'insieme induttivo definito come segue:

* Ogni atomo è una formula

* Se A è una formla \not A è una formula

* Se $o$ è un connettivo binario, A e B due formule, $AoB$ è una formula

* Se A è una formula, x una variabile, \forall xA e \exists x A sono formule
