# Relazioni Particolari

## DAG

Chiamiamo **DAG** (o "Grafo Diretto Aciclico") un **grafo diretto senza cicli**. 

Un DAG è riconoscibile perchè nella sua rappresentazione **gli archi vanno tutti verso una sola direzione** e non essendoci cicli non possono andare nella direzione opposta. 

Ad esempio tutti gli archi uscenti dai vari nodi puntano ad elementi disposti graficamente piu' in basso.

L'esempio più comune di DAG è dato dalla particolare relazione che chiamiamo **alberi**.

## Alberi

Un **albero** è un DAG connesso che ha un solo node sorgente (che per comodità chiamiamo **radice**). 
Tutti i nodi dell'albero, ad eccezione della radice, hanno **uno ed un solo arco entrante**. **La radice non ha archi entranti ma solo archi uscenti**. 
I nodi di un albero possono avere **da 0 a N archi uscenti**. I nodi con 0 archi uscenti sono detti **foglie** dell'albero.

Un particolare tipo di albero è l'**albero binario**, particolare relazione per cui **ogni nodo ha al massimo 2 nodi figli** che per comodità denominiamo **figlio destro** e **figlio sinistro**

Graficamente, quando disegnamo un albero, è possibile evitare di disegnare le frecce che connettono i nodi: infatti riconoscere la radice è semplice, basta trovare il nodo che non ha archi entranti. Una volta trovata la radice si sa che, essendo l'albero un DAG, tutti gli archi che "coinvolgono" un nodo vanno nella stessa direzione e mai nel senso opposto degli altri. Non ci sono quindi ambiguità. È generalmente consigliabile mettere le frecce nel disegnare gli alberi.

Preso un nodo dell'albero possiamo determinare la sua **profondità** all'interno dell'albero: il numero di archi necessari per andare dalla radice dell'albero al nodo stesso.

Si dice invece **altezza** di un albero il valore di profondità massima raggiungibile dai nodi degli alberi, cioè la distanza massima che c'è da una foglia, tra tutte le foglie, e la radice dell'albero. 

## Relazioni di Equivalenza

Diciamo che $R$ è una **relazione di equivalenza** su un insieme $S$ se e solo se $R$ è **binaria su $S$, riflessiva, simmetrica e transitiva**.

### Esempio

Un esempio di relazione di equivalenza è data dalla seguente.

$R = { \langle a,b \rangle \in Z | a^2=b^2 }$

Essa infatti è:

* *binaria* (ci sono due "termini" coinvolti nella relazione, $a$ e $b$)
* *riflessiva* ($n^2 = n^2$ per ogni $n \in Z$)
* *simmetrica* (se $n^2=m^2$ anche $m^2=n^2$ per ogni $m,n \in Z$ )
* *transitiva* (se $n^2=o^2$ e $m^2=o^2$ allora $n^2=o^2$ per ogni $m,n,o \in Z$)

### Classe di Equivalenza

Data una relazione di equivalenza $R$ su un insieme $S$, la **classse di equivalenza** di un elemento $x \in S$ è definita come 

$[x] = {y|\langle x,y \rangle \in R}$

Cioè la **classe di equivalenza** di un elemento $x \in R$ è **l'insieme degli elementi di $R$ con cui $x$ è in relazione**.

Se $R$ è una relazione di equivalenza su $S$ allora le classi di equivalenza generate da $R$ partizionano S. (Vedere i capitoli precedenti per la definizione di *classe di equivalenza*).

## Relazioni Composte

Date due relazioni $R1$ e $R2$ con $R1$ definita su $S \times T$ e $R2$ definita su $T \times Q$ è possibile definire una nuova relazione che chiamiamo di composizione tra $R1$ e $R2$ su $S \times Q$ tale che $\langle a,c \rangle \in R2 \circ R1$ se e solo se esiste un $b \in T$ tale che $\langle a,b \rangle \in R1$ e $\langle b,c \rangle \in R2$.

$R2 \circ R1$ è detta composizione di $R1$ e $R2$.

*Aggiungere considerazioni sul dominio*

### Proprietà della composizione

Scrivere $R2 \circ R1$ è diverso dallo scrivere $R1 \circ R2$, **la composizione non è un'operazione commutativa**.

La composizione è un'**operazione è associativa**.

Prese due relazioni $R1$ e $R2$ con $R1$ definita su $S \times T$ e $R2$ definita su $T \times Q$, si ha che $(R1 \circ R2)^{-1} = R1^{-1} \circ R2^{-1}$.

