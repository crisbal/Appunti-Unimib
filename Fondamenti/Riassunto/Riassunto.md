#Strutture Relazionali, Grafi e Ordinamenti

##Proprietà delle relazioni

Una **relazione binaria** $R$ (con Dominio $S$) puo' soddisfare le seguenti proprietà:

* **Riflessiva**, cioè $\langle x,x \rangle \in R$ per ogni $x \in S$, cioè ogni $x$ è in relazione con se stesso
* **Irriflessiva**, cioè $\langle x,x\rangle \not\in R$ per ogni $x \in S$, cioè nemmeno un $x$ è in relazione con se stesso
* **Simmetrica**, cioè ogni volta che esite $\langle x,y\rangle \in R$ esiste anche $\langle y,x\rangle \in R$
* **Asimmetrica**, cioè ogni volta che eiste $\langle x,y\rangle \in R$ non esiste mai $\langle y,x\rangle \in R$
* **Antisimmetrica**, cioè che se $\langle x,y\rangle \in R$ e $\langle y,x\rangle \in R$ possiamo dire che $x = y$  
* **Transitiva**, cioè se $\langle x,y\rangle \in R$ e $\langle y,z\rangle in R$ c'è anche $\langle x,z\rangle \in R$

###Chiarimenti sulla proprietà Antisimmetrica

Se $x$ in relazione con $y$ e $y$ in relazione con $x$ allora $x=y$

Considero l'insieme degli abitanti dell'Italia e considero la relazione "abita nella stessa citta'"
la relazione non e' antisimmetrica: infatti se Maria abita nella stessa citta' di Carlo e Carlo abita nella stessa citta' di Maria non segue che Carlo e' uguale a Maria

Considero i numeri naturali e considero la relazione "e' maggiore od uguale a"
La relazione e' antisimmetrica perche' perche' se un numero e' maggiore od uguale ad un secondo numero ed il secondo e' maggiore uguale del primo allora i due numeri sono uguali  

Nella rappresentazione a Grafi si capisce che è antisimmetrica perchè ha cicli di lunghezza massima 1 (Solo cappi ammessi)

### Proposizioni derivate dalle proprietà

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


## Metodi di rappresentazione delle relazioni

### Tabella
Le **relazioni n-arie** (cioè di *arietà pari a n*) possono essere *sempre* rappresentate mediante una **tabella**. La tabella a $n$ colonne. In particolare se la relazione da rappresentare (che chiamiamo $R$) è un sottoinsieme del prodotto cartesiano S


### Matrice

**Operazioni su Matrici Booleane**



## Grafi

Con **grafo orientato** (o grafo *diretto* o *disgrafo*) intendiamo un metodo di rappresentare una relazione binaria $G$ definitia su un solo insieme $V$ tale che $G \subseteq V \times V$.

### Nodi e archi

Gli elementi di $V$ sono detti **nodi** (o vertici), gli elementi di $G$ sono detti **archi**.

Un arco che va da $vi$ a $vj$ si dice **uscente** da $vi$ ed **entrante** in $vj$.

Il **numero di archi uscenti** da un nodo è detto il **grado di uscita** del nodo. 
Il **numero di archi entranti** da un nodo è detto il **grado di entrata** del nodo.

**Nodo Sorgente** sefile_base_name non ha archi entranti. 
**Nodo Pozzo** se non ha archi uscenti. 

*Aggiungere cose sulle matrici*

Un nodo è detto **isolato** se non ha archi entranti o uscenti.

### Cammini

Un **cammino** tra due nodi $vin$ e $vfin$ è una sequenza finita di nodi $\langle vin,v2,v3,...,vfin\rangle$ dove ciascun nodo è collegato al successivo da un arco uscente dal primo ed entrante nel secondo.


Un **semi-cammino** tra due nodi $vin$ e $vfin$ è una sequenza finita di nodi $\langle vin,v2,v3,...,vfin\rangle$ dove ciascun nodo è collegato al successivo da un arco di direzione arbitraria.

Si dice **lunghezza** di un cammino il numero di archi che lo compongono. La lunghezza di un cammino è uguale al numero di nodi che lo compongono meno 1.

Un grafo si dice **connesso** se dati due nodi qualunque **esiste sempre** un **semi-cammino** che li connette.
Un grafo si dice **fortemente connesso** se dati due nodi qualunque **esiste sempre** un **cammino** che li connette.
