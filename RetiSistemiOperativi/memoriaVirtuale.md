# Paging

Abbiamo spazio logico e memoria fisica. Lo spazio logico viene diviso in pagine, unità tutte uguali. Dividiamo la la memoria fisica in frame. Il memory managmente costruisce una mappatura. Per evitare che lo spazio logico sia contiguo ma non quello fisico.

# Memoria Virtuale

Se parliamo di memoria virtuale aggiungiamo la memoria di massa. Delle pagine sono presente nella memoria fisica, altre invece sulla memoria di massa.

Possiamo tenere nella memoria fisica solo la memoria di cui abbiamo bisogno. C'è quindi da portare in fisica la pagina sulla virtuale.

C'è potenzialmente tanta memoria libera, tra Stack e Heap
Possiamo implementari gli spazi di indirizzamento sparsi, ed usarli per cose utili, tipo lo sharing di librerie, di risorse etc. Grazie al paging possiamo mappare la stessa "shared library" page ad entrambi i processi.

# Demand Paging
Come faccio swap-in e swap-out?

Una possibilità sarebbe quella di caricare il processo intero in memoria at load time.
Oppure caricare la pagina in memoria solo quando mi serve, che ci puo' stare, usa poco IO.
Abbiamo quindi un lazy swap, non trasferisce pagine in RAM a meno che la pagina non è richiesta.

Il fatto che la pagina possa essere sia in memoria che su disco devo avere un bit di valida sulla ram. Se c'è valido allora uso quella, se è invalido prendo dal disco.

# Page Fault
Se una pagina non sta in memoria, si va incontro al page fault. 
Quindi devo accedere al disco, il processo deve essere sospeso.
Riprendo con l'esecuzione che ha causato il page fault.

# Demand Paging Implementation

Quando parte il processo non ci sono pagine in memoria, quindi va tutto caricato dal disco. Pure demand paging. 
Un'istruzione puo' portare ad accedere a più pagine, quindi devo caricare due pagine, supponiamo l'istruzione sia a cavallo delle pagine e che acceda un'altra istruzione, devo accedere a 3 pagine/frame!
Gli eventi di page fault sono rari, anche perchè, come con la cache, c'è la località spaziale e temporale.

Serve un aiuto dall'hardware, tramite swap space.

# Performance Demand Paging

1-p * T + p * T2

# Memoria fisica piena

Se la memoria fisica è piena devo fare swap out!

Devo rimpiazzare le pagine! Solo le pagine modificare vanno swappate su disco, altrimenti faccio operazioni intuili. Basta usare un dirty bit, serve definire un algoritmo per rimpiazzare le pagine.

# PAge and frame replacment

Quanti frame devo dare ad un processo?
Quali frame devo rimpiazzare?

Si prende una reference string e si vede quello che ha le prestazioni migliori. Idealmente vuoi che facendo crescere i numero di frame dovresti avere meno page fault, ma non è detto che è vero! In alcuni casi aumentare i frame aumenta le page fault. Succede in particolare con l'algoritmo FIFO (Anomalia di Belady).

Algoritmo ottimale
Rimpiazza la pagina che non sarà usata nel futuro. Ma non è possiibile questa cosa! Questo algoritmo è buono solo per confronto.

# LRU
LRU = Least recently used

Rimpiazzo la più vecchia.
Meglio di FIFO ma ovviamente peggio di OPT.

L'unica cosa è che devo fare una ricerca lineare per trovare il più vecchio. Potrei fare tutto con una struttura a stack, pero' dovrei aggiornare i puntatori, perchè se uso una che sto a metà devo portarla in cima e quindi re-linkare nello stack prev() e next().

Possiamo approssimare LRU, usare un refrence bit per ogni pagina. Ogni volta che la pagina viene usata mettiamo il bit a uno. Cambiamo le pagine che hanno il bit di reference a 0. 

Posso anche fare il second chance algorithm. Se il reference bit è a 0 la rimpiazzo. Se è a 1 e non è lei lo metto a zero ma lo lascio in memoria comunque: devo loopare in modo circolare. 
Lo miglioro usando due bit, il reference bit e il modify bit. 
Ref Mod
0   0   Ne usate ne modificate
0   1   Non usate ma modificare
1   0   Usate di recente ma non modificate
1   1   Usate e modificate (non voglio rimpiazzare se possibile)

Altri algoritmi: Least Frequently used: quella usata di meno in un frame di tempo
Most Frequently Used: quella usata di più in un frame di tempo (perchè quella usata di meno è appena entrata in memoria)

# Page Buffering   

Ottimizza l'uso dell'IO
Tengo sempre un pool di frame vuoti.
Evitare troppo IO spostando queste attività in una fase successiva. Se c'è un page fault trasferisco dal disco alla memoria. Lo swap out lo faccio dopo con calma. In questo modo non sto in attesa per tanto tempo.

Oppure Mantenere il cotenuto dei frame liberi e cambiare solo quando necessario. 

# Copy on Write

Utile quando hai processi padre e figlio. Quando faccio fork() in teoria devo creare un clone, copia pari pari del padre. Pero' questa cosa la posso eliminare del tutto (o in buona parte). Ad esempio se Pfiglio fa exec() può essere che ho fatto operazioni inutili. 
Con il COW inizialmente sia padre che figlio condividono le stesse cose in memoria. In questo modo il meccanismo di creazione è molto molto veloce. E duplico solo quando divergono.

In molti casi il sw ha idee migliroi del SO su quello che può succedere. L'OS fa delle ipotesi, ma il programma sa magari meglio (database). Potrebbe essere che l'app gestisce da se quello che deve stare sul disco o quello che sta sulla memoria principale. Appunto come per i database. 

----

Secondo video

# Allocazione frame
C'è un numero minimo di frame da allocare (dipende dall'architettura)
C'è un massimo che è la memoria totale.

# Allocazione fissa
Ogni processo prende un numero fisso di frame, ma non va bene, i processi hanno necessità diverse.

Oppure posso dare in modo proporzionale, a seconda della dimensione del processo.

# Allocazione dinamica

Basandosi sulla priorità
Se c'è page fault tolgo frame al processo con meno priorità.

Global replacement: posso scegliere tra tutti i processi come e cosa rimpiazzare
Local repl: scelgo tra un numero chiuso di frame

# Thrashing
Se un processo non ha abbastanza pagine vado incontro al Thrashing.
Il page fault è altissimo. La CPU non viene usata, l'OS aumenta il numero di processi ma in realtà sto già al limite, perchè aspetto IO.

Per evitare sta cosa devo essere in grado di stimare le risorse usate da un processo: devo sempre avere un minimo che mi permette di evitare il thrashing. 

# Working set (skippato)

# Memory mapped files

Mappaggio di file in memoria. Trasferisco parti del disco dentro la memoria. Lavorando sulla memoria è tutto più veloce. 
Al posto di usare read e write uso delle istruzioni apposta. 

Se cambio in memoria non cambio su disco. Devo quindi tenere in sync le due cose.
Questa cosa è particolarmente utile anche se un file viene usato da più processi. Un file che è mappato sia da A che B viene puntato nella stessa indirizzo in memoria.

# Memoria del kernel

Viene trattata in modo diverso. Ad esempio ho necessità di avere blocchi continui di memoria (per IO e DMA)

## Buddy System

La memoria viene divisa in blocchi contigui, che divido via via in 2. In questo modo ho dei blocchi che sono indipendenti ma allo stesso tempo tra loro collegati perchè per fare un blocco grosso mi servono liberi i più piccoli.

## Slab Allocation

Basato sul fatto che OS alloca oggetti di dimensioni "fisse" tipo un descrittore so che pesa sempre N kbyte, quindi mantengo in memoria spazio allocato in dimensioni "fisse"


