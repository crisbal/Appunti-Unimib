# Logica

Chiamata anche *sistema formale*, una logica $Lo$ è definita da:

* $Alf$, **alfabeto** di $Lo$: un insieme non vuoto, finito o numerabile, di simboli. Combinando più simboli si ottiene un'espressione di $Lo$.
* $F$, insieme delle formule ben formate: sottoinsieme di espressioni di $Lo$ che come suggerisce il nome contiene le $FBF$ di $Lo$.
* $Alfx$, insieme degli assiomi di $Lo$.
* $R$, insieme finito di relazioni ${R1,R2,...,Rn}$: queste relazioni sono definite tra le formule di $Lo$ e sono dette **regole di inferenza**.

## Linguaggio

Presa una logica $A$, chiamiamo $L$ il linguaggio della logica, costruito induttivamente, e che equivale all'insieme delle $FBF$ di $A$.

Visto che l'insieme delle $FBF$ è costruito induttivamente esso rende il linguaggio $L$ della logica $A$ un **linguaggio composizionale**: combinando infatti le $FBF$ esistenti se ne possono ottenere nuove.


## Formule ben formate

Per definire l'insieme delle formule ben formate $F$ di un linguaggio $L$ è necessario utilizzare l'induzione.

Per prima cosa definiamo un insieme non vuoto che chiamiamo $Atom$ (insieme degli atomi) ed un insieme non vuoto $Op$ di operatori unari (che indichiamo con $?$) e binari (che indichiamo con $o$). Definiamo $L = Atom \bigcup Op \bigcup {(,)}$

Allora $F$ è definito induttivamente:

* Se $A$ è un elemento di $Atom$ allora $A \in F$
* Se $A \in F$ e $?$ è un operatore unario allora $(?A) \in F$
* Se $A \in F$, $B \in F$ e $o$ è un operatore binario allora $(AoB) \in F$

### Unicità della scomposizione

Per ogni FBF vale una (ed una sola) delle seguenti proprietà:

* $A \in Atom$ (formula atomica)
* Esiste un unico operatore unario $?$ e un'unica formula $B$ tal che $A$ ha la forma $(?B)$
* Esiste un unico operatore binario $o$ e due formule uniche $B$ e $C$ tali che $A$ ha la forma $(B o C)$ 

## Interpretazione del linguaggio

Preso un qualsiasi linguaggio logico (ma anche un linguaggio come l'italiano o un linguaggio di programmazione) e costruita una proposizione combinando elementi del linguaggio, è necessario interpretarla cioè andare a stabilirne il significato. Non è abbastanza studiare la frase o la proposizione guardando soltanto i simboli che la compongono (analisi sintattica) ma è necessario anche comprenderne a pieno il senso (analisi semantica). 

Attraverso l'inferenza -> ragionamento per arrivare ad un risultato, una sorta di dimostrazione.

Nelle regole di inferenza c'è una premessa e una conclusione.

**Esempio**

Prendiamo ad esempio le due frasi:

* "Tutti i cani sono animali"
* "Tutti gli animali sono cani"

Anche se le parole usate per comporre le due frasi sono le stesse il loro significato è completamente diverso. 

### Interpretazione nella logica formale

Nel caso di un sistema logico formale associare ad una frase una semantica (un senso) significa determinare il contesto di interpretazione della frase, attraverso un operazione chiamata funzione di interpretazione. Per fare questa operazione viene fornito un insieme $B$ (insieme dei valori di verità), caratterizzato dall'avere almeno due elementi ed un insieme T (insieme designato a rappresentare il vero). La funzione di interpretazione restituirà un valore di $B$.

Generalmente $B$ ha due elementi (${t,f}$) ma è anche possibile che $B$ abbia un qualsiasi numero finito o non di elementi.

**Soddisfacibilità**

Nel caso sia necessario è possibile studiare il significato di una formula nel contesto di una struttura o realtà matematica, attraverso l'utilizzo della relazione di *soddisfacibilità* che si indica con il simbolo $\models$. $\models$ è sottoinsieme di $M \times F$ dove $M$ è una struttura e $M \models A$ ($M$ modella $A$).

## Modelli

Preso un insieme $F$ di formule ben formate, che sono utilizzate per rappresentare la realtà, chiamiamo **modelli** di $F$ le formule di $F$ che sono verificate. L'insieme $F$ prende anche il nome di insieme degli *assiomi associati*.


### Rappresentazione della realtà

Per rappresentare una realtà usando soltanto una logica $A$ dobbiamo quindi servirci di vari modelli che (passatemi il gioco di parole) **modellano la realtà**, regole logiche che sono rispettate e verificate all'interno della realtà di riferimento. 

**Esempio**

*Realtà da modellare*: Pianeta Terra

La Luna è un satellite della Terra = Vero, è un modello

Sulla terra c'è acqua = Vero, è un modello

Sulla terra non esistono animali = Falso, non è un modello

Descrizione della terra attraverso i modelli: La Terra ha come satellite la Luna e sulla Terra c'è acqua. 

## Albero sintattico

Un albero sintattico $T$ è un albero binario con nodi etichettati da simboli di $L$ che indica la precisa ed unica scomposizione di una FBF $X$.

* Se $X$ è una formula atomica, l'albero binario $X$ ha solo un nodo etichettato con $X$
* Se $X = AoB$, $X$ è rappresentato dall'albero binario che ha la radice etichettata con $o$ il cui figlio sinistro è la rappresentazione di $A$ e quello destro quella di $B$.
* Se $X=?A$, $X$ è la rappresentazione dell'albero binario che ha la radce etichettata con $?$ e il suo unico figlio è la rappresentazione di $A$

