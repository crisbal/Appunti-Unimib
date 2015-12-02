# Metodi di rappresentazione delle relazioni

## Tabella
Le **relazioni n-arie** (cioè di *arietà pari a n*) possono essere *sempre* rappresentate mediante una **tabella**. La tabella a $n$ colonne. In particolare se la relazione da rappresentare (che chiamiamo $R$) è un sottoinsieme del prodotto cartesiano S


## Matrice

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

### Cammini e cicli

Un **cammino** tra due nodi $vin$ e $vfin$ è una sequenza finita di nodi $\langle vin,v2,v3,...,vfin\rangle$ dove ciascun nodo è collegato al successivo da un arco uscente dal primo ed entrante nel secondo.

Un **semicammino** tra due nodi $vin$ e $vfin$ è una sequenza finita di nodi $\langle vin,v2,v3,...,vfin\rangle$ dove ciascun nodo è collegato al successivo da un arco di direzione arbitraria.

Si dice **lunghezza** di un cammino il numero di archi che lo compongono. La lunghezza di un cammino è uguale al numero di nodi che lo compongono meno 1.

Un grafo si dice **connesso** se dati due nodi qualunque **esiste sempre** un **semicammino** che li connette.
Un grafo si dice **fortemente connesso** se dati due nodi qualunque **esiste sempre** un **cammino** che li connette.

Un **ciclo** intorno ad un nodo $v$ di un grafo è un cammino in cui $v = vin = vfin$ 
Un **semiciclo** intorno ad un nodo $v$ di un grafo è un semicammino in cui $v = vin = vfin$.

Se il **ciclo di lunghezza 1** esso viene chiamato **cappio**, che è un arco che esce dal nodo per poi subito rientrare. 

### Grafo etichettato

Un **grafo etichettato** è una funzione che **associa ad ogni arco** del grafo **un'etichetta**, cioè una sorta di nome.v 

### Grafi e proprietà delle relazioni

$G$ è una relazione binaria.

* Se *G* è **riflessiva** allora il grafo di $G$ avrà un **cappio intorno ad ogni nodo**. Similmente se $G$ è **irriflessiva** non c'è **mai un cappio nel grafo** associato.

* Se $G$  è **simmetrica**  allora ogni volta che nel grafo c'è un arco tra due nodi c'è anche quello che va in direzione opposta. Similmente se è **asimmetrica** se un arco congiunge due nodi non c'è mai il suo opposto.

* Se $G$ è **transitiva** allora ogni volta che nel grafo associato abbiamo una situazione $v1->v2 , v2->v3$ (si potrebbe dire che ci sono archi di fila tra tre nodi) ci sarà per forza anche un arco che collega v1 a v3 (che chiude il triangolo v1,v2,v3).