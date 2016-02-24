# Poset


## Definizione

Un **poset** (chiamato anche *ordine parziale* o *semiordinamento*) è una struttura relazionale data da una coppia $\pangle{S,R}$ in cui $S$ è un insieme e $R$ è una relazione **binaria**, **riflessiva**, **antisimmetrica** e **transitiva**.

## Rappresentazione grafica

Rappresentato il grafo di un poset ci si accorge di alcune caratteristiche distintive:

* il grafo di un poset non ha cicli di lunghezza maggiore di 1 (antisimmetria della relazione)

* più precisamente, il grafo ha solo cicli di lunghezza 1 (antisimmetria della relazione e riflessività)

La rappresentazione classica ha però degli elementi superflui, non necessariamente utili alla comprensione del poset e che la rendono pesante da disegnare e comprendere.

Per risolvere tale problema vengono in aiuto i **Diagrammi di Hasse**, particolari rappresentazioni di Poset basate su delle convenzioni comuni.

In particolare:

* si eliminano i cappi dalla rappresentazione, si sa a prescindere che esistono visto che si sta lavorando con un poset (riflessivo)

* si eliminano gli archi della transitività, come sopra, sono superflui, se $a->b$ e $b->c$ non rappresentiamo l'arco $a->c$ anche se per definizione dovrebbe esserci. Tale operazione è chiamata riduzione transitiva.

* eliminiamo completamente le frecce che indicano la direzione degli archi rimasti. Se dobbiamo rappresentare $\pangle{a,b}$ metteremo $a$ più in basso di $b$, in modo che tutte le eventuali frecce puntassero verso l'alto.

In conclusione:

* gli unici archi che rimangono sono quelli che indicano le coperture tra gli elementi

### Copertura

Il concetto di copertura torna particolarmente utile quando si disegnano i diagrammi di Hasse, ma non per questo è limitato solo ad essi.

Diamo per prima cosa una definizione generica.

Presi tre elementi diversi ${x, y, z}$ appartenenti alla relazione $R$. Si dice che $y$ è una copertura di $x$ se $\pangle{x,y} \in R$ (cioè se $x$ è in relazione con $y$) e allo stesso tempo non esiste che $\pangle{x,z} \in R$ e non esiste che $\pangle{z,y} \in R$. 

A parole potremmo dire che $x$ è copertura di $y$ se non esiste $z$ che si mette in mezzo tra il confronto di $x$ e $y$.

A partire da un grafo, per ottenere tutte le possibili coperture basta fare l'operazione di riduzione transitiva.

**Esempio**

$A = {1,2,3,4,5,6,7,8}$

$R$ è espressa dalla proprietà $\pangle{x,y}$ tale che $x$ è divisibile per $y$

Quindi 4 è copertura di 8.

Come anche 2 è copertura di 4.

2 però non è copertura di 8, perchè anche se 8 è divisibile per 2, esiste comunque 4 (che sta in mezzo tra il 2 e l'8) che è divisore (e copertura) di 8. 

## Elementi estremali

In un poset è possibile individuare alcuni particolari elementi che godono di determinate proprietà chiamati elementi estremali.

### Minimale e Massimale

Dato un poset $S$, $s\_{min}$ è detto elemento minimale di $S$ se per ogni elemento $s'\in S$ $s\_{min} < s'$.

Dato un poset $S$, $s\_{max}$ è detto elemento massimale di $S$ se per ogni elemento $s'\in S$ $s\_{max} > s'$.

Dato un poset $S$, esiste almeno un elemento massimale e uno minimale.

### Minorante e Maggiorante

Dato un poset $S$ e un sottoinsieme $A \subseteq S$, è detto **minorante** di $A$ un elemento di $S$ tale che per ogni $a \in A$ $s \le x$. Possono esistere più minoranti.

Dato un poset $S$ e un sottoinsieme $A \subseteq S$, è detto **maggiorante** di $A$ un elemento di $S$ tale che per ogni $a \in A$ $s \ge x$. Possono esistere più maggioranti.

### Massimo Minorante e Minimo Maggiorante

Dato un poset $S$ e un sottoinsieme $A \subseteq S$, è detto massimo minorante (greatest lower bound) di $A$ un elemento di $S$ che è minorante di A ed è maggiore o uguale di tutti gli altri minoranti di A. 


Dato un poset $S$ e un sottoinsieme $A \subseteq S$, è detto minimo maggiorante (least upper bound) di $A$ un elemento di $S$ che è maggiorante di A ed è minore o uguale di tutti gli altri maggioranti di A.

Dato un poset $S$, ogni sottoinsime $A \subseteq S$ ha al massimo un minimo maggiorante e un massimo minorante.

### $\leq$-massimo e $\leq$-minimo

È detto $\leq$-massimo l'elemento $\geq$ di tutti gli altri elementi di un poset $S$.

È detto $\leq$-minimo l'elemento $\leq$ di tutti gli altri elementi di un poset $S$.

Dato un poset $s$, esiste al piu un $\leq$-minimo e un $\leq$-massimo. 

