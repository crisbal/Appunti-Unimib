# Algoritmi di Routing

Trovare il percorso migliore, a costo minimo
Assegnare ad ogni tratta che viene percorsa nella rete un costo, numero intero.

Il problema del routing non esiste se c'è una sola tratta che collega due punti, ovviamente. 

# Distance Vector
Implementazione distribuita di Bellman Ford

dist(S,X) = min{dist(AdiacS,X)+c(S,AdiacS)}

dist = somma dei costi

Facilmente implementabile in maniera distribuita

## Implementazione
Ciascusa coppia di nodi ha una tabella che dice quanto il nodo dista dagli altri. Se due nodi sono collegati ad ogni passo dell'agoritmo i due nodi si scambiano la tabella/vettore. In base a quello che dice il vicino e il costo tra i due nodi, essi fanno i conti.

t0

A -1> B
A -3> D
A -0> A
A -inf> altri

B -1> A
B -1> C
B -3> D
B -0> B
B -inf> altri

D -3> A
D -3> B
D -inf> C
D -0> D
D -2> E

t1 
A riceve nuove informazioni
In particolare B gli dice che vede a distanza 1 il nodo C, quindi A-\>B-\>C = 1+1=2
E da D gli dice che D vede E a distanza 2. Quindi A -> E = 5

B riceve che la distanza B-E non è infinita ma si passa per C

t2
B passa ad A il fatto che si puo' passare per BC per arrivare ad E e costa 1+2=3. Quindi costa 4 e non più 5 fare AE. 

## Vantaggi Svantaggi

E' lento, soprattutto se ci sono modifiche nella rete. Il router più lento fa da bottleneck.
Ci sono protocolli che lo usano. RIP (Inet), IGRP, EIGRP, BGP (protocollo di routing che usa path vector che pur essendo diverso usa concetti simili, usato inter dominio, inter AS).

# Link State
Non è distribuito. Ogni nodo fa da solo. Le informazioni sulla topologia della rete vengono distribuite in modo flooding (simil broadcast).

Poi usa l'algoritmo di Dijkstra per calcolare il percorso migliore, costruendo un albero di copertura.

## Alg
N={Origine}
Per ogni nodo adiacente calcolo il costo, per tutti gli altri metto distanza=inf
finchè non ho tutti i nodi del grafo
Aggiungo un nodo per volta, aggiungo il nodo più vicino a tutti i nodi adiacenti all'insieme dei nodi N. Accresce i nodi uno per volta. 
Una volta che lo ho aggiunto, ricalcolo la distanza tra i nodi. Magari posso raggiungere nodi già in N con i nuovi nodi aggiunti ad un costo minore.

## Esempio

Il nodo manda messaggi in tutte le direzioni, ovviamente in modo furbo, se l'ho già inoltrato non lo inoltro. 

Prendiamo N={A}
N può raggiungere B:1 D:3
Prendo B e lo metto in N.
Posso raggiungere A -> C con costo 2 e AD a costo 3. Scelgo C e lo metto in N. 
Ora posso fare D3 E4
Prendo D e lo metto dentro N
Ora manca solo E, che lo posso raggiungere a costo 4 o costo 5. Aggiungo quindi E4 ad N.

