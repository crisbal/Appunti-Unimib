# Sintassi Logica Proposizionale

La sintassi ci permette di capire come scrivere le formule proposizionali e come trattarle.

## Alfabeto proposizionale

Un alfabeto $\sum$ (chiamato anche $L$ se chiaro nel contesto) è costituito da:

* Connettivi proposizionali unari ($\neg$) e binari ($\and,\or$,implica,co-implica)
* Costanti proposizionali (Vero e Falso)
* Un insieme non vuoto di simboli proposizionali $P = {A,B,C,...}
* I simboli separatori $($ e $)$

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
* Se $A$ è una formula $(\negQ)$, le sottoformule di $A$ sono $A$ stessa e le sottoformule di Q. $\neg$ è il connettivo logico principale e $Q$ è sottoformula immediata di $A$.
* Se $A$ è una formula $(BoC)$, dove $o$ è un connettivo binario, le sottoformule di $A$ sono $A$ stessa e le sottoformule di $B$ e $C$. $o$ è il connettivo principale e $B$ e $C$ sono sottoformule immediate di $A$.

### Esempi di formule

* $\neg A$
* $(A \or B)$
* $((\neg A) \and (A \or (\not (BimpC))))

## Parentesi e precedenza tra gli operatori

Se seguissimo alla lettera la definizio di formula proposizionale ci ritroveremmo con formule che hanno tantissime parentesi, perchè non è stata ancora specificata una precedenza tra gli operatori. 

In particolare nella logica proposizionale gli operatori seguono il seguente ordine di precedenza:

$\neg,\or,\not,imp,coimp$

Ciò significa che se mancano le parentesi una formula ben formata va parentesizzata prioritizzando le sottoformule i cui connettivi principali hanno la precedenza più alta. A parità di precedenza si associa a destra.

### Esempi di priorità

* $\neg A \or B \and C = (\neg(A)\or B)\and C$
* $A \or B \or C$ = $A \or (B \or C)$



# Semantica Logica Proposizionale

La semantica ci permete di dare un senso alle formule proposizionali.

## Sistema di valutazione 

Il sistema di valutazione $S$ della logica proposizionale è così definito: 

* $B={0,1}$, il dominio della valutazione logica
* $T={1}$, i valori che assumono il valore di *vero*
* $Op={operatori}$, gli operatori utilizzabili

## Operatore negazione

L'operatore $\neg$ è il più semplice tra tutti. $\neg$, come sappiamo dalla sintassi è un operatore unario. Preso un valore ne restituisce l'opposto logico.

Eccone la tabella di verità:

|   |$\neg$|
|---|---|
|0|1|
|1|0|

## Operatore AND

L'operatore $\and$ è un operatore binario. Detto anche di congiunzione, fa un operazione che, in pratica, equivale al prodotto tra i valori di verità di due proposizioni.

|A|B|$A \and B$|
|---|---|---|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

Letteralmente $\and$ ritorna 1 quando entrambi i "parametri" sono 1.

## Operatore OR

L'operatore $\or$ è un operatore binario. Detto anche di disgiunzione, fa un operazione che, in pratica, è molto simile alla somma tra i valori di verità di due proposizioni.

|A|B|$A \or B$|
|---|---|---|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|

Letteralmente $\or$ ritorna 1 quando almeno uno dei due parametri è a 1.


## Operatore Implica

L'operatore $Implica$ è un operatore binario è detto anche di implicazione. $A$ è chiamata premessa e $B$ è chiamata conseguenza.

|A|B|$A IMP B$|
|---|---|---|
|0|0|1|
|0|1|1|
|1|0|0|
|1|1|1|

$A imp B$ è vero se $B$ è vero, o se sia $A$ che $B$ sono false.

## Operatore co-implica

L'operatore $co-implica$ è un operatore binario è detto anche di co-implicazione. Esso puo' essere scritto come $(A imb B) \and (B imp A)$. 

|A|B|$A CoIMP B$|
|---|---|---|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|1|

$A coimp B$ è vero se sia $A$ che $B$ sono entrambe vere o entrambe false, cioè se i loro valori coincidono.


## Equivalenza logica

Diciamo che due proposizioni A e B sono logicamente equivalenti se sono uguali per ogni valutazione booleana (a parità di input, danno lo stesso output)

### Idempotenza

$A \and A = A$
$A \or A = A$

###
