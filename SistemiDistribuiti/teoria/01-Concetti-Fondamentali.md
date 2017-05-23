# Sistema distribuito

Definiamo come sistema distribuito un insieme di componenti hardware e software comunicanti per mezzo di passaggio di messaggi, posizionati su determinati computer connessi ad una rete.

Oppure possiamo definire un sistema distribuito come una collezione di computer indipendenti che appaiono all'utente come un singolo sistema coeso.

## Caratteristiche principali

* Assenza di memoria condivisa
* Comunicazione per mezzo di messaggi
	* E' quindi richiesto che i componenti del sistema distribuito siano interconnessi in qualche modo
* Assenza di uno stato globale
	* Ogni componente conosce il proprio stato e lo stato istantaneo degli altri componenti
	* Per conoscere lo stato degli altri componenti deve fare una richiesta
* Esecuzione concorrente
	* Tutti i componenti eseguono insieme ed in modo autonomo
	* Le risorse sono condivise e distribuite tra tutti i componenti che eseguono
* Non esiste un controllore/clock/scheduler globale
	* L'unico coordinamento è fatto dai componenti che si scambiano messaggi
* Indipendenza ai fallimento
	* I singoli nodi possono fallire
	* Il fallimento di un singolo nodo non causa il fallimento del sistema distribuito
	* Gli altri componenti non sanno subito se un nodo è fallito
* Trasparenza
	* Il sistema all'esterno appare come unico e indivisibile.

### Trasparenza

Costruita in diversi modi:

* Trasparenza di accesso, accedo a risorse remote come se fossero risorse locali
* Trasparenza di locazione, accedo senza sapere dove si trovano fisicamente le risorse
* Trasparenza di concorrenza, più processi eseguono su risorse condivise senza darsi fastidio
* t. di replicazione, permette la creazione di istanze multiple senza che i programmatori lo sanno
* t. al fallimento, se ci sono problemi cerca di mascherarli e non influisce l'esecuzione
* t. alla migrazione: posso trasferire utenti, dati, processi senza che le operazioni ne risentano
* t. alla performance: permette la riconfigurazone dinamica delle performance
* t. alla persistenza: permette di nanscondere se una risorsa sia in memoria o su disco

## Caratteristiche accessorie di un sistema distribuito

* Collagare e standardizzare componenti eterogenei
	* Ad esempio Internet collega reti diverse
	* Reso semplice da un infrastruttura con middleware
* Openness
	* il sistema distribuito lavora secondo uno standard open ben definito
	* semplicità di configurazione e di aggiunta di nuovi componenti
* Mantenere sicurezza
	* Alcuni dati che viaggiano nel sistema distribuito potrebbero essere "privati"
	* E' necessario identificare e verificare l'identità di un altro host connesso al sistema distribuito, per evitare impersonamento
* Offrire scalabilità
	* Un sistema distribuito è scalabile quando funziona all'aumento esponenziale di risorse disponibili e di utenti
	* Ad esempio Internet, come rete IP, ha il limite di scalabilità imposto dalla dimensione finita dell'indirizzo IPv4: prima o poi gli indirizzi finiscono
* Gestione dei fallimenti
	* Il sistema distribuito può essere in grado di riconoscere i fallimenti dei suoi componenti
	* Il s.d. può essere in grado di nascondere all'utente finale i fallimenti
	* Il s.d. può fare recovery dai fallimenti
	* il s.d. e i suoi client possono essere costruiti in grado da sopportare un certo grado di errore
* Gestione della concorrenza
	* il s.d. deve essere in grado di gestire l'accesso simultaneo ad una stessa risorsa


## Problematiche basilari di un sistema distribuito

* Individuare la controparte della comunicazione
	* Serve un modo per identificare l'interlocutore
	* Convenzione di naming: ad esempio tramite DNS, oppure tramite IP statico
* Accedere alla controparte
	* Una volta che l'ho individuata, come mi ci connetto?
	* Accedo direttamente o passo da un access point?
* Comunicare
	* Come invio e ricevo i messaggi? Serve un protocollo di comunicazione
	* Come estraggo informazioni dai messaggi? Il protocollo deve stabilire un formato di comunicazione

## Architettura

Un architettura software definire la strutture del sstema, le interfacce tra i componenti e i protocolli di interazione.

A seconda delle esigenze è possibile utilizzare uno stile di costruzione diverso per ogni sistema distribuito.

* Architettura a strati
	* Detta anche layered
	* I componenti del layer superiore chiamano quelli del layer inferiore, ma non viceversa
	* Più si sale nei layer più l'astrazione è elevata
* Architettura a livelli (tier)
	* Complementare al layering
	* Dato un singolo layer stabilisco su quali server e nodi mettere le funzionalità
	* E' utilizzata per l'organizzazione e la progettazione di applicazioni e servizi
	* E' praticamente come "splitto" logicamente il mio software. Ad esempio se voglio dividere il la logica dal database o la view dalla logica. Allo stesso tempo definisco quali parti voglio fare eseguire al client e quali al server.

Altre tipologie di architettura: 

* centrate sui dati
	* i processi comunicano tra di loro tramite una "repository"/file system condiviso
	* ad esempio applicazioni che lavorano basandosi su un file system di rete
	* oppure ancora il Web
* basate sugli oggetti 
	* ogni componente del sistema distribuito è visto come un oggetto
	* gli oggetti comunicano tra di loro tramite delle remote procedure calls
* basata sugli eventi
	* i componenti comunicano attraverso lo scaturimento e l'ascolto di eventi
	* ad un evento è associato anche un payload di dati
	* c'è un event-bus che si occupa di propagare gli eventi a tutti i componenti

## DOS, NOS, Middleware

### DOS

Distributed operating systems. Si prendono tante macchine omogenee e le si unisce in un unica entità. Le applicazioni usano il DOS senza sapere nulla di quello che sta sotto.

* L'utente non è aware della molteplicità di macchine
* Posso migrare i dati da un punto all'altro in base alle necessità
* Posso migrare la computazione da un punto all'altro
* Posso migrare processi interi tra i vari componenti

In particolare tutto ciò mi permette di realizzare:

* Load balancing
* Velocizzazione computazionale
* Trasparenza HW e SW.
* Esecuzione remota

## NOS

Un sistema operativo senza coesione che collega macchine eterogenee. Le macchine devono solo poter comunicare tra di loro. 

* Gli utenti sono coscienti del fatto che ci siano più macchine
* NOS permette di comunicare tra processi tramite socket
* NOS permette l'esecuzione concorrente di processi
* I servizi (come la migrazione dei processi o il load balancing) sono gestite dalle applicazioni
* L'accesso alle macchine del NOS è fatto esplicitamente

## Middleware

Implementa servizi su un NOS per renderlo trasparente alle applicazioni. JavaRMI

Il middleware si mette a metà tra il NOS e le applicazioni.

Offre servizi come:

* naming
* trasparenza di accesso
* persistenza
* transazioni
* sicurezza

Il middleware in realtà è implementato come una applicazione che sta sopra il sistema operativo. Si connette agli altri componenti del sistema distribuito attraverso una comunicazione tramite rete parlando lo stesso protocollo.

## Politiche e meccanismi

Un S.D. dovrebbe essere la composizione di componenti indipendenti, sia logicamente (cioè ogni componente fornisce un servizio autonomo) sia costruttivamente (ogni componente utilizza gi altri per mandare avanti un compito più complesso)

Posso quindi separare meccanismi e politiche (cioè la separazione tra cosa voglio fare e come voglio farlo). 
