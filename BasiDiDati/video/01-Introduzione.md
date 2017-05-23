# Dagli archivi tradizionali alle basi di dati

## Base di dati

Insieme organizzato di dati utilizzati per lo svolgimento di determinate attività

## Struttura di un sistema informatico

+ Sistema di comunicazione
+ Hardware centralizzato o distribuito
+ Sistema operativo
+ Basi di dati
+ Software di ambiente e di sistema (DBMS e simili)
+ Applicazioni (che usano le basi di dati)
+ Interfaccia utente

## Ridondanza

Evitarla il più possibile, evitare la ripetizione di dati
Collegata alla ridondanza c'è anche l'incoerenza: cioè avere informazioni della stessa natura diverse in diverse archivi.

## Dati

I dati sono condivisi, tra i vari componenti di un'organizzazione.

# Modelli dei dati

Sappiamo che una base di dati è una risorsa integrata e condivisa. E' necessario quindi controllare le autorizzazioni sulla base di dati, capire e definire chi può fare cosa su quali dati. E' inoltre importantissimo gestire attività concorrenti e multi-utente. 

Serve quindi un sistema di gestione di basi di dati: DBMS.

## DBMS

E' un prodotto in grado di gestire collezioni di dati che siano (anche): grandi (più della memoria centrale), persistenti (per un periodo indipendente dal ciclo di vita dei singoli programmi), condivise (utilizzate da persone e applicazioni diverse).

Un DBMS deve anche garantire:

* Affidabilità (cioè una resistenza a malfunzionamenti hardware e software)
* Sicurezza (cioè un modo di controllare gli accessi)
* Efficienza (cioè utilizzare al meglio le risorse di spazio e tempo del sistema)

## Schema, istanza, modello

* Schema: la struttura della tabella, cioè il suo nome e il nome dei suoi campi. Detto formalmente: l'insieme dei concetti e delle relazioni tra i concetti che costituiscono la base di dati.
* Istanza: i dati inseriti/instanziati della tabella, cioè l'istanziamento di strutture dati che rispettono lo schema

## Modello di dati

Insieme di costrutti utilizzati per organizzare i dati di interesse in concetti e descriverne la dinamica.

Ce ne sono di diversi tipi, ad esempio il modello relazionale prevede il costrutto di relazione (tabella)

## TIpologia di modelli

Modelli logici: usati nei DBMS per organizzare i dati. Sono quelli relazionale, reticolare, gerarchico, ad oggetti.

Il modello relazionale è molto molto semplice. Prima del modello relazionale c'era il modello reticolare e quello gerarchico.

Modelli concettuali: permettono di rappresentare i dati in modo indipendente da ogni sistema DBMS. Si descrivono i concetti del mondo reale, sono usati in fasi preliminari della progettazione. Il modello concettuale più noto è il modello ER.

# Architettura di un DBMS

## Due livelli

* Schema logico: descrizione di alto livello
* Schema fisico: rappresentazione dello schema logico per mezzo di strutture fisiche di memorizzazione

Il livello logico è indipendente dal livello fisico: una relazione è usata allo stesso modo indipendentemente dal livello fisico.

Se cambia lo schema logico le applicazioni devon cambiare il loro codice.

E' quindi utile introdurre un sistema a tre livelli, il livello degli schemi esterni: una vista parziale di alcune informazioni dello schema logico.
Se cambio lo schema fisico lo schema logico non ha problemi, idem quello esterno.

Anche il livello esterno è indipendente dal resto. Se aggiungo schemi esterni non cambio lo schema logico. Se cambio lo schema logico lo schema esterno rimane lo stesso, se ovviamente non faccio modifiche che richiedono per forza il cambiamento dello schema esterno.

## Linguaggi

Data description language: per costruire le strutture degli schemi

Data manipulation language: per manipolare i dati, attraverso interrogazioni che ritrovano dati e attraverso transazioni che li aggiornano. SQL.



