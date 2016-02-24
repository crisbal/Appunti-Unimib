# Sintassi Logica Proposizionale

La logica proposizionale si occupa di investigare il valore di verità di proposizioni (ben) formate da proposizioni elementari, dette anche atomiche. Più precisamente, lo scopo della logica proposizionale (semantica) è quello di assegnare un valore di verità a proposizioni atomiche (valutazione di verità, tecnicamente) e di capire quindi i valori di verità assunti dalle proposizioni costruite a partire da quelle atomiche secondo precise regole sintattiche. 

La sintassi ci permette di capire come scrivere le formule proposizionali e come trattarle.

## Alfabeto proposizionale

Un alfabeto $\sum$ (chiamato anche $L$ se chiaro nel contesto) è costituito da:

* Connettivi proposizionali unari ($\neg$) e binari ($\land,\lor,\implies,\iff$)
* Costanti proposizionali $\top$ e $\bot$ (per detonatare Vero e Falso)
* Un insieme non vuoto di simboli proposizionali $P = {A,B,C,...}$
* I simboli separatori '(' e ')'

Le costanti e i simboli proposizionali sono chiamati **atomi**,  le loro negazioni **atomi negati**. Entrambi sono detti *letterali*.

## Formule proposizionali

L'insieme $PROP$ delle formule ben formate (o formule del linguaggio proposizionale $L$) è definito per induzione in questo modo:

* Le costanti e i simboli proposizionali sono formule
* Se $Q$ è una formula anche $\neg Q$ è una formula
* Se $o$ è un connettivo logico binario e se $Q$ e $R$ sono due formule, $(AoB)$ è una formula.

Una formula del linguaggio proposizionale è anche chiamata proposizione o anche enunciato proposizionale.

### Sottoformule

Data una formula $A$, è detta sottoformula di $A$ ogni B che appare come componente di $A$ stessa.

Sia $A$ una formula, l'insieme delle sottoformule è definito in questo modo:

* Se $A$ è una costante o un simbolo proposizionale allora $A$ è sottoformula di se stessa.
* Se $A$ è una formula $(\neg Q)$, le sottoformule di $A$ sono $A$ stessa e le sottoformule di Q. $\neg$ è il connettivo logico principale e $Q$ è sottoformula immediata di $A$.
* Se $A$ è una formula $(BoC)$, dove $o$ è un connettivo binario, le sottoformule di $A$ sono $A$ stessa e le sottoformule di $B$ e $C$. $o$ è il connettivo principale e $B$ e $C$ sono sottoformule immediate di $A$.

### Esempi di formule

* $\neg A$
* $A \lor B$
* $(\neg A) \land (A \lor (\neg (B \implies C)))$

## Parentesi e precedenza tra gli operatori

Se seguissimo alla lettera la definizione di formula proposizionale ci ritroveremmo con formule che hanno tantissime parentesi, perché non è stata ancora specificata una precedenza tra gli operatori. 

In particolare nella logica proposizionale gli operatori seguono il seguente ordine di precedenza:

$\neg,\lor,\land,\implies,\iff$

Ciò significa che se mancano le parentesi una formula ben formata va parentesizzata prioritizzando le sottoformule i cui connettivi principali hanno la precedenza più alta. A parità di precedenza si associa a destra.

### Esempi di priorità

* $\neg A \lor B \land C = ((\neg A)\lor B)\land C$
* $A \lor B \lor C$ = $A \lor (B \lor C)$

# Semantica Logica Proposizionale

La semantica ci permete di dare un senso alle formule proposizionali.

## Sistema di valutazione 

Il sistema di valutazione $S$ della logica proposizionale è così definito: 

* $B={0,1}$, il dominio della valutazione logica
* $T={1}$, i valori che assumono il valore di *vero*
* $Op={operatori}$, gli operatori utilizzabili


## Valutazione Booleana

Una formula logica proposizionale $A$ è soddisfatta da una valutazione boolena $Iv$ se $Iv(A) = 1$. Cioè se per almeno un caso (o combinazione di veri e falsi) risulta vera.

Una formula logica proposizionale è una tautologia se è soddisfatta per ogni valutazione boolena $Iv$. Cioè è vera in ogni caso (e quindi indipendentemene dai valori di verità degli enunciati che la compongono).

Una formula logica proposizionale è una contraddizione se non è mai soddisfatta per ogni valutazione boolena $Iv$. Cioè è falsa in ogni caso (e quindi indipendentemene dai valori di verità degli enunciati che la compongono).

## Operatore negazione

L'operatore $\neg$ è il più semplice tra tutti. $\neg$, come sappiamo dalla sintassi, è un operatore unario. Preso un valore ne restituisce l'opposto logico.

Eccone la tabella di verità:

 A   $\neg A$
--- ----------
 0      1
 1      0

## Operatore AND

L'operatore $\land$ è un operatore binario. Detto anche di congiunzione, fa un operazione che, in pratica, equivale al prodotto tra i valori di verità di due proposizioni.

A 				B 				 $A \land B$
--------------  --------------  -------------- 
0 				0 				     0
0 				1 				     0
1 				0 				     0
1 				1 				     1


Letteralmente $\land$ ritorna 1 quando entrambi i "parametri" sono 1.

## Operatore OR

L'operatore $\lor$ è un operatore binario. Detto anche di disgiunzione, fa un operazione che, in pratica, è molto simile alla somma tra i valori di verità di due proposizioni.

A 				B 				 $A \lor B$
--------------  --------------  -------------- 
0 				0 				     0
0 				1 				     1
1 				0 				     1
1 				1 				     1

Letteralmente $\lor$ ritorna 1 quando almeno uno dei due parametri è a 1.


## Operatore Implica

L'operatore $\implies$ è un operatore binario è detto anche di implicazione. $A$ è chiamata premessa e $B$ è chiamata conseguenza.

A 				B 				 $A \implies B$
--------------  --------------  ----------------
0 				0 				     1
0 				1 				     1
1 				0 				     0
1 				1 				     1

$A \implies B$ è vero se $B$ è vero, o se sia $A$ che $B$ sono false.

## Operatore co-implica

L'operatore $\iff$ è un operatore binario è detto anche di co-implicazione. Esso può essere scritto come $(A \implies B) \land (B \implies A)$. 

A 				B 				 $A \iff B$
--------------  --------------  ------------
0 				0 				     1
0 				1 				     0
1 				0 				     0
1 				1 				     1

$A \iff B$ è vero se sia $A$ che $B$ sono entrambe vere o entrambe false, cioè se i loro valori coincidono.


## Equivalenza logica

Diciamo che due proposizioni A e B sono logicamente equivalenti se sono uguali per ogni valutazione booleana (a parità di input, danno lo stesso output).

### Idempotenza

$A \land A = A$

$A \lor A = A$

### Associatività

### Commutatività

### Distribuitivià

### Assorbimento

### Doppia negazione

### Leggi di De Morgan

### Terzo escluso

### Contrapposizione

### Contraddizione

## Modelli Proposizionali

### Definzione 

Un modello è un interpretazione di una formuala proposizionale.

### Definizione ricorsiva

Sia $M$ un insieme di simboli proposizionali, definiamo $\models$ $\subseteq (M \times L)$ in modo ricorsivo in questo modo:

* $M \models A$ se e solo se $A \in M$
* $M \models Vero$ e $M \not \models Falso$
* $M \models \not A$ se e solo se non $(M \models A)$ se e solo se $M \not \models A$
* $M \models A \land B$ se e solo se $M \models A$ e $M \models B$
* $M \models A \lor B$ se e solo se $M \models A$ o $M \models B$
* $M \models A \implies B$ se e solo se $M \not \models A$ o $M \models B$
* $M \models A \iff B$ se e solo se $M \models A$ e $M \models B$ oppure $M \not \models A$ e $M \not \models B$

### Valutazione booleana e Modelli

Per dare un significato più concreto a questa definizione possiamo dire che tutti i simboli che appartengono al sottoinsieme $M$ sono quelli che hanno valutazione booleana 1, mentre quelli che non appartengono hanno valutazione booleana 0.

In simboli $p \in M$ se e solo se $V(p)=1$

**In particolare**

Il passo base della definizione ricorsiva di $\models$ coincide con la definizione di assegnazione (valutazione) booleana $V$.

### Definizioni relative ai modelli

Sia $A$ una formula, se $M \models A$ diciamo che M è un modello di A, cioè che M rende vera A.

Se $M$ rende vere tutte le formule di un insieme $T$ ($M \models A$ per ogni formula $A$ in $T$) diciamo che $M$ è un modello per $T$ e indichiamo questo con $M \models T$. 

Se $M \models A$ per qualche $M$ allora diciamo che $A$ è soddisfacibile.

Se per nessun insieme di simboli proposizionali $M$, è verificato che $M \models A$ allora diciamo che $A$ è insoddisfacibile.


## Decidibilità logica proposizionale

La logica proposizionale è decidibile (posso sempre verificare il significato di una formula). Esiste infatti una procedura effettiva che stabilisce la validità o no di una formula, o se questa ad esempio è una tautologia.

In particolare il verificare se una proposizione è tautologica o meno è l'operazione di decibilità principale che si svolge nel calcolo proposizonale.

