# Architettura Logica

## Architettura software

L' insieme delle decisioni significative sull' organizzazione di un sistema software.

Insieme degli elementi strutturali e delle interfacce e collaborazioni tra essi.

## Architettura logica

L'organizzazione su larga scala delle classi software in package, sottosistemi e strati

Non si prendono decisioni sulla disposizione fisica dei componenti (sta alla architettura di deployment)

## Strati

Uno strato e' un gruppo a grana molto grossa di classi, package che ha delle responsabilita' coese rispetto ad un determinato aspetto del sistema.

In genere strati piu' alti utilizzano i servizi degli strati piu' bassi ma non viceversa.

A strati stretta: uno strato puo' solo richiamare i servizi dello strato piu' basso

A strati risdlassata: uno strato puo' richiamare i servizi di uno qualsiasi degli strati piu' in basso

Piu si scende piu' gli strati diventano generici

## Problemi nelle architetture software

* Alto accoppiamento dei componenti (coupling): cambiamenti in uno generano conseguenti modifiche in molti altri
* La logica applicativa può essere condivisa con le GUI
* Servizi tecnici collegati direttamente la logica applicativa, sfavorendone il riuso
* L’evoluzione del sistema è resa difficoltosa dall’alto accoppiamentp e dalla commistione di funzionalita' distinte

Alcune di queste problematiche possono essere risolte con il pattern Layers.

Esso organizza l'architettura logica di un sistema in piu' livelli discreti comprendenti ciascuno funzionalita' distinte ma correlate in modo da permettere una una separazione delle responsabilita' che aumenti la coesione del sistema stesso.
