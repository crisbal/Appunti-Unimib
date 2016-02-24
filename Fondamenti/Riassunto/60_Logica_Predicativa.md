# Sintassi logica predicativa

## Logica Predicativa

Con la logica proposizionale non tutti i concetti e le argomentazioni possono essere espressi, in quanto la validità dell'argomento dipende direttamente dalle relazioni che sussistono tra i *costituenti* delle proposizioni.

Grazie alla logica predicativa possiamo:

* Riferirci a concetti e a individui in particolare
* Fare affermazioni particolari o universali, senza per forza far riferimento a individui specifici.

La logica predicativa prende anche il nome di linguaggio di primo ordine. 

Concetti esclusivi alla logica di primo ordine sono, ad esempio, i quantificatori (tutti, alcuno, uno solo).

## Linguaggio logico predicativo

Un linguaggio logico predicativo è costruito sui seguenti simboli logici (immutabili):

* Connettivi proposizionali unari ($\neg$) e binari ($\land,\lor,\implies,\iff$)
* Costanti proposizionali $\top$ e $\bot$ (per denotare Vero e Falso)
* Il simbolo di uguaglianza (non sempre presente) $=$ 
* I simboli separatori '(', ')' e ','
* Un'infinità numerabile di simboli di variabile individuale ($x_1, x_2, x_3, ...$)
* Il simbolo di quantificatore universale $\forall$
* Il simbolo di quantificatore esistenziale $\exists$

e sui seguenti parametri (esclusivi al linguaggio logico predicativo):

* Un insieme finito/numerabile di parametri e simboli di predicato, ognuno dei quali ha associato un intero positivo $n$ detto arità 
* Un insieme finito/numerabile di simboli di funzione, ognuno dei quali ha associato un intero positivo $n$ detto arità
* Un insieme finito/numerabile di simboli di costante

Volendo è possibile definire connettivi e componenti al linguaggio logico appena presentato, o addrittura rimuoverne alcuni (perché ad esempio $\exists = \neg \forall \neg$).

### Esempi di linguaggi logici predicativi

**Linguaggio della teoria degli insiemi**

Uguaglianza: è presente (due insiemi possono essere uguali)

Simboli di predicato: $\in$

Simboli di costante: $\emptyset$

Simboli di funzione: nessuno

**Linguaggio della teoria dei numeri**

Uguaglianza: è presente (due numeri possono essere uguali)

Simboli di predicato: $<$ e $>$

Simboli di costante: 0

Simboli di funzione: $s$ (funzione unaria per trovare il successivo di un numero) e + e - (simboli binari per addizione e sottrazione) 


## Espressioni Legali del Linguaggio

Con espressioni legali del linguaggio si intendono tutte le formule di un linguaggio $L$. Il concetto di espressione legale è strettamente collegato (se non uguale) a quello di formula ben formata.

Per prima cosa definiamo i termini e le formule atomiche.

### Termini

L'insieme $TERM$ dei termini di $L$ è l'insieme induttivo definito in questo modo:

* Ogni simbolo di costante e di variabile è un termine
* Se $t_1, \ldots, t_n$ sono termini ed *f* è un simbolo di funzione n-aria, allora $f(t_1, \ldots, t_n)$ è un termine.

### Atomi

L'insieme $ATOM$ delle formule atomiche è definito in questo modo:

* $\top$ e $\bot$ sono atomi
* se $t_1$ e $t_2$ sono atomi allora $t_1 = t_2$ è un atomo
* se $t_1, \ldots, t_n$ sono termini e $P$ è un simbolo di predicato a $n$ argomenti, allora $P(t_1, \ldots, t_n)$ è un atomo

Definiamo ora le formule ben formate di un linguaggio logico predicativo, cioè l'insieme di espressione che possono essere costruite combinando termini e atomi attraverso connettivi e quantificatori.

### Formule ben formate

L'insieme delle formule di L è l'insieme induttivo definito come segue:

* Ogni atomo è una formula

* Se $A$ è una formula, $\neg A$ è una formula

* Se $o$ è un connettivo binario, A e B due formule, $AoB$ è una formula

* Se A è una formula, x una variabile, $\forall x A$ e $\exists x A$ sono formule

Le formule della logica predicativa (di primo ordine) si valutano su variabili individuali e singole e non su funzioni ed insiemi.

### Chiarimenti sugli operatori

Gli operato della logica predicativa hanno la seguente precedenza:

$$\forall \exists \neg \land \lor \implies \iff$$

In caso di parità di precedenza si associa a destra (come nella logica proposizionale).

La scrittura $\forall xy$ è equivalente alla scrittura $\forall x \forall y$.

Il campo di azione del quantificatore $\forall xA$ è $A$, il campo di azione del quantificatore $\exists xA$ è $A$.

## Variabili libere e legate

In una formula non atomica le variabili possono essere quantificate attraverso il quantificatore universale $\forall$ o quello esistenziale $\exists$.

Ad esempio in $\forall x Cane(x) \implies Animale(x)$ la variabile $x$ è quantificata.

Ma le variabili potrebbero anche non essere quantificate ad esempio nella formula predicativa $Cibo(t) \land Buono(t)$. In questo caso la variabile è detta **libera** perché occorre senza essere quantificata.

Ovviamente la seconda frase non ha un vero e proprio significato perché deve essere contestualizzata (ad esempio dire che tipo di cibo sia 't'). 

Generalizzando, una variabile libera denota un individuo all'interno di un contesto.

Un atomo si dice chiuso se non contiene variabili.

### Definizione insieme di variabili di un termine

L'insieme $var(t)$ delle variabili di un termine *t* è definito come segue:

* $var(t) = \{t\}$ se t è una variabile
* $var(t) = \emptyset$ se t è una costante
* $var(f(t_1, \ldots, t_n)) = \bigcup var(t_i)$ con i che varia tra 1 e n


**Esempio**
L'insieme $var(t)$ delle variabili di una formula atomica $R(t_1, \ldots, t_n)$ è:

* $var(R(t_1, \ldots, t_n)) = \bigcup var(t_i)$ con i che varia tra 1 e n

### Definizione di variabile che occorre libera

L'occorrenza libera di una variabile in una formula è definita sulla struttura della formula in modo induttivo:

* Se A è un atomo, x occorre libera in A se x occorre in A
* x occorre libera in $\neg A$ se x occorre libera in A
* x occorre libera in $A o B$ se x occorre libera in A o x occorre libera in B
* x occorre libera in $\forall zA$ ed in $\exists zA$ se x occorre libera in A e $x \neq z$

### Variabili legate

Una variabile è detta legata o vincolata se non occorre libera.

**Esempio**

$$\forall x(P(x) \implies Q(x,y))$$

Variabili legate: x, perchè nel campo di esistenza di $\forall x$

Variabili libere: y

# Semantica Logica Predicativa

Con la logica predicativa (che ricordiamo essere una logica del primo ordine) possiamo andare a rappresentare realtà del mondo reale che non erano rappresentabili attraverso la logica proposizionale.

Nella logica del primo ordine possiamo interpretare i vari simboli che compongono il linguaggio attraverso l'utilizzo di strutture matematiche: oggetti che permettono di trasformare formule in espressioni con significato specifico relativamente alla realtà che si sta rappresentando.

## Funzione di interpretazione

Ad esempio la struttura per un linguaggio $L$ ci deve fornire un qualche tipo di funzione che assegni al quantificatore $\forall$ (o a $\exists$) un insieme non vuoto di elementi su cui lavorare. Questa funzione è detta funzione di interpretazione e l'insieme non vuoto di elementi è detto dominio di interpretazione.

Una struttura per il linguaggio $L$ è una coppia $U = \pangle{D,I}$ dove:

* D è un insieme non vuoto chiamato Dominio di U
* I è una funzione di interpretazione che:
	* ad ogni simbolo di costante c associa un elemento $c^{I} \in D$
	* ad ogni simbolo di funzione n-aria f associa una funzione $f^{I} : D^{n} \rightarrow D$
	* ad ogni simbolo di predicato n-ario P associa una relazione n-aria $P^{I} \in D^{n}$

Ad ogni parametro di $L$ viene quindi assegnato un preciso significato.

