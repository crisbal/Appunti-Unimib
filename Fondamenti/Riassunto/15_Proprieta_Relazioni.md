# Proprietà delle relazioni

Una **relazione binaria** $R$ (con Dominio $S$) può soddisfare le seguenti proprietà:

* **Riflessiva**, cioè $\langle x,x \rangle \in R$ per ogni $x \in S$, cioè ogni $x$ è in relazione con se stesso
* **Irriflessiva**, cioè $\langle x,x\rangle \not\in R$ per ogni $x \in S$, cioè nemmeno un $x$ è in relazione con se stesso
* **Simmetrica**, cioè ogni volta che esite $\langle x,y\rangle \in R$ esiste anche $\langle y,x\rangle \in R$
* **Asimmetrica**, cioè ogni volta che eiste $\langle x,y\rangle \in R$ non esiste mai $\langle y,x\rangle \in R$
* **Antisimmetrica**, cioè che se $\langle x,y\rangle \in R$ e $\langle y,x\rangle \in R$ possiamo dire che $x = y$
* **Transitiva**, cioè se $\langle x,y\rangle \in R$ e $\langle y,z\rangle \in R$ c'è anche $\langle x,z\rangle \in R$

## Chiarimenti sulla proprietà Antisimmetrica

Se $x$ in relazione con $y$ e $y$ in relazione con $x$ allora $x=y$

### Esempio

Considero l'insieme degli abitanti dell'Italia e considero la relazione "abita nella stessa città"
la relazione non è antisimmetrica: infatti se Maria abita nella stessa città di Carlo e Carlo abita nella stessa città di Maria non segue che Carlo è uguale a Maria

Considero i numeri naturali e considero la relazione "è maggiore o uguale a"
La relazione è antisimmetrica perché perché se un numero è maggiore o uguale ad un secondo numero ed il secondo è maggiore uguale del primo allora i due numeri sono uguali

Nella rappresentazione a Grafi si capisce che è antisimmetrica perché ha cicli di lunghezza massima 1 (Solo cappi ammessi)

## Proposizioni derivate dalle proprietà

Dalla *riflessiva*:

* Se $R$ è riflessiva anche $R^{-1}$ (l'inversa) è riflessiva
* $R$ è riflessiva se e solo se $\bar{R}$ è irriflessiva
* Se $R$ e $R'$ sono riflessive anche $R \cup R'$ e $R \cap R'$ sono riflessive

Dalla *simmetrica*:

* $R$ è simmetrica se e solo se $R = R^{-1}$
* se $R$ è simmetrica anche $R^{-1}$ e $\bar{R}$ sono simmetriche
* se $R$ e $R'$ sono simmetriche anche $R \cup R'$ e $R \cap R'$ sono simmetriche

Dall' *antisimmetrica*:

* $R$ è antisimmetrica se e solo se $R \cap R^{-1} \subseteq \varphi S$
* $R$ è antisimmetrica se e solo se $R \cup R^{-1} = \emptyset$

Dalla *transitiva*:

* Se $R$ e $R'$ sono transitive anche $R \cap R'$ è transitiva

