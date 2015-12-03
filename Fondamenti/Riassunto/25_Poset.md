# Poset


## Definizione

Un **poset** (chiamato anche *ordine parziale* o *semiordinamento*) è una struttura relazionale data da una coppia $\pangle{S,R}$ in cui $S$ è un insieme e $R$ è una relazione **binaria**, **riflessiva**, **antisimmetrica** e **transitiva**.

## Diagramma di Hasse 

Rappresentato il grafo di un poset ci si accorge di alcune caratteristiche distintive:

* il grafo di un poset non ha cicli di lunghezza maggiore di 1 (antisimmetria della relazione)

* ma più precisamente il grafo ha solo cicli di lunghezza 1 (antisimmetria della relazione e riflessività)

La rappresentazione classica ha pero' degli elementi superflui, non necessariamente utili alla comprensione del poset e che la rendono pesante da disegnare e comprendere.

Per risolvere tale problema vengono in aiuto i **Diagrammi di Hasse** particolari rappresentazioni di Poset basate su delle convenzioni comuni.

In particolare:

* si eliminano i cappi dalla rappresentazione, si sa a prescindere che esistono visto che si sta lavorando con un poset (riflessivo)

* si eliminano gli archi della transitività, come sopra, sono superflui, se $a->b e b->c$ non rappresentiamo l'arco $a->c$ anche se per definizione dovrebbe esserci.

* eliminiamo completamente le frecce che indicano la direzione degli archi rimasti. Se dobbiamo rappresentare $\pangle{a,b}$ metteremo $a$ più in basso di $b$, in modo che tutte le eventuali frecce puntassero verso l'alto.

