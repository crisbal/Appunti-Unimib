# File System

Un file è una struttura logica che rappresenta l'unità logica di memorizzazione.

Un file system è un sistema che permette di avere un'intefaccia logica al sistema di memorizzazione. 

I file sono costituiti da blocchi di settori. Ogni file ha un file control block che contiene informazioni sul file stesso. Dal livello logico a quello fisico ho dei driver.

Il file system è una cosa intercambiabile tra più sistemi operativi.

# Memoria di massa

Diviso in partizioni, aree che contengono file.


# Struttura file system

Le app vedono un file system logico, usando primitive come open close read write si interfacciano.

Sotto c'è un modulo di organizzazione dei file, che permette di operare sui metadati di un file system.

Si interfaccia tutto con il basic file system, che effettua operazione elementari, operazioni di retrieve block che è praticamente la read ma a livello fisico.

C'è infine l'I/O driver.

# Virtual File System

In Unix il file system logico è anche Virtual, differenti file system vengono esposti tutti uguali, con le stesse API.

# Implementazione file-system

Boot control block - per fare il boot dell'OS

Volume control block - contiene dettagli sul volume, contiene il numero di blocchi, l'elenco dei file etc

Struttura a directory
Contiene i file control block 

# File Control Block

Ogni file ha il FCB

Permessi, date, dimensioni, puntatori al dato (oppure proprio il dato se i dati sono pochi)

# Apertura di un file

Accedo alla directory di quel file e metto nella memoria kernel un pezzo della directory e il file control block
Il file control block va nella tabella dei file aperti (caching e multiprocesso)

# Allocazione sulla memoria di massa

Nell'allocazione contigua alloco un gruppo di blocchi vicini per un file. Vantaggiosa per le READ/WRITE, specialmente se sono su HDD o CD.

C'è il problema di frammentazione. Serve quindi un mappaggio logico <-> fisico. Un po' come per la page table. 


# Extent FS
Un file è diviso in macro blocchi linkati fra loro. L'allocazione è contigua ma a pezzi. 

# Linked FS
Il file è una sequenza di blocchi e ogni file tiene un puntatore al file successivo. Questo tipo di allocazione ci evita la frammentazione esterna. Problema: ogni puntatore è un seek sul disco. Quindi ci vuole un po' di tempo.
Problema: affidabilità, se un blocco si corrompe mi rimangono blocchi orfani.

# File allocation table (FAT)

Ogni volume ha una allocation table. per ogni blocco c'è il puntatore al blocco successivo, le informazioni stanno in una table e non intrinseche al blocco. la FAT puo' stare tutto in memoria principale.

# Indexed

Ogni file ha un index blocks che sono i puntatori ai dati. Il file è quindi una sequenza di puntatori, che sono gli effettivi dati su disco. Mi serve una tabella di indice, posso accedere in modo "casuale" e non c'è frammentazione.

Si puo' fare anche two-level, se è troppo grande da indicizzare

# Combined scheem

In un FCB posso avere vari livelli di indicizzazione.
Ad esempio diretto per i primi N blocchi
Indiretto singolo per altri blocchi.
Ed indiretto doppio per altri ancora.


# Performance
Non tutti i modelli vanno bene per tutte le tecnologie di memoria.
Linkata va bene per disco non per flash
Quella index va bene ma è dispendiosa da implementare.

# Gestione spazio libero

Abbiamo bisogno di tenere traccia in modo efficiente dello spazio libero. 
La soluzione potrebbe essere di tenere una bit-map che mi dice se ogni blocco è libero o no.

Richiede spazio (per 1TB ci vogliono 32bit) e ci vuole tempo per far scorrere.

Altro modo: usare una lista linkata che punta al primo blocco vuoto.

# Efficenza e performance

Necessità: tenere vicino  metadati e dati


Cache: possiamo inserire cache nel disco per aumentare le prestazioni

Scrittura sincrona: richeido l'ack sulla scrittura su disco
Scrittura async: dico di scrivere ma in realtà va su una cache intermedia e poi ci pensa il disco a scrivere quando vuole e riordinando se necessario.

# Buffer cache

Sia per il paging che per la cache di scrittura e lettura

# Recovery

## Log/journaling

Tengo traccia delle transazioni in un log e le cose vengono scritte in maniera asyncrona tenendo d'occhio il log. Il log è anche utile per disaster recovery.
