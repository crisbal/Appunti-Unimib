# Logica

Chiamata anche *sistema formale* una logica $A$ è definita da:

* $Alf$, **alfabeto** di $A$: un insieme non vuoto , finito o numerabile, di simboli. Combinando più simboli si ottiene un'espressione di $A$.
* $F$, insieme delle formule ben formate: sottoinsieme di $A$ che come suggerisce il nome contiene le $FBF$ di $A$.
* $Ax$, insieme degli assiomi di $A$.
* $R$, insieme finitio di relazioni ${R1,R2,...,Rn}$: queste relazioni sono definite tra le formule di $A$ e sono dette **regole di inferenza**.

## Linguaggio

Presa una logica $A$, chiamiamo $L$ il linguaggio della logica, costruito induttivamente, e che equivale all'insieme delle $FBF$ di $A$.

Visto che l'insieme delle $FBF$ è costruito induttivamente esso rende il linguaggio $L$ della logica $A$ un **linguaggio composizional**: combinando infatti le $FBF$ esistenti se ne possono ottenere nuove.

## Interpretazione del linguaggio

Preso un qualsiasi linguaggio logico (ma anche un linguaggio come l'italiano o un linguaggio di programmazione) e costruita una proposizione combinando elementi del linguaggio, è necessario interpretarla cioè andare a stabilirne il significato. Non è abbastanza studiare la frase o la proposizione guardando soltanto i simboli che la compongono (analisi sintattica) ma anche comprenderne a pieno il senso di questa (analisi semantica). 

**Esempio**

Prendiamo ad esempio le due frasi:

* "Tutti i cani sono animali"
* "Tutti gli animali sono cani"

Anche se le parole usate per comporre le due frasi sono le stesse il loro significato è completamente diverso. 

### Interpretazione nella logica formale
Nel caso di un sistema logico formale associare ad una frase una semantica (un senso) significa determinare il contesto di interpretazione della frase, attraverso un operazione chiamata funzione di interpretazione. Per fare questa operazione viene fornito un insieme $B$ (insieme dei valori di verità), caratterizzato dall'avere almeno due elementi ed un insieme T (insieme designato a rappresentare il vero). La funzione di interpretazione restituirà un valore di $B$.

Generalmente $B$ ha due elementi (${t,f}$) ma è anche possibile che $B$ abbia un qualsiasi numero finito o non di elementi.

**Soddisfacibilità**

Nel caso sia necessario è possibile studiare il significato di una formula nel contesto di una struttura o realtà matematica, attraverso l'utilizzo della relazione di *soddisfacibilità* che si indica con il simbolo $\models$. $\models$ è sottoinsieme di $M \times F$ dove M è una struttura e $M \models A$ ($M$ modella $A$).

