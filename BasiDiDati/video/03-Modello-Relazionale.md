# Modello relazionale

## Modello logico

Insieme di trutture di rappresentazione utilizzabile per descrivere un insieme di dati, lo schema logico, che a sua volta descrive una realtà di interesse.

## Perchè usare le relazioni?

"Il mondo è la totalità dei fatti, non delle cose"

Due cosa: Mario, 35 anni
Un fatto: Mario ha 35 anni

## Relazione

Basato sul concetto di relazione matematica.

Si considerino D1,..,Dn domini. Prendiamo il prodotto cartesiano D1x...xDn, l'insieme di tutte le tuple (d1,...,dn) tali che d1€D1, dn€Dn.

Definiamo come relazione un sottoinsieme di D1x...xDn.

* Non esiste ordinamento all'interno della relazione.
* Le n-uple sono tutte distinte
* Ciascuna n-upla è al suo interno ordinata. l'i-esimo attributo proviene dall'i-esimo dominio.

## Relazione del modello relazionale

E' una relazione ed noltre:

* ad ogni dominio associamo un nome (attributo): il nome descrive il ruolo.
* Su ogni colonna troviamo attributi omogenei

Quindi in una relazione del modello relazionale: 

* Non conta l'ordine delle righe 
* Non conta l'ordine delle colonne, abbiamo l'intestazione

Il modello relazionale ci permette di creare riferimenti tra relazioni diversi, attraverso valori dello stesso dominio in n-ple diverse.

In questo modo creiamo un modello che è completamente indipendente dall'HW, tanto che i dati diventano completamente indipendenti dalle caratteristiche fisiche. 

## Concetti fondamentali

### Schema di relazione

Caratterizzato da un nome e da un insieme di attributi

R(A1,...An)

### Schema di basi di dati

Insieme di schemi di relazione

B={R1(X1),...,Rk(Xk)}

### Tupla

Una n-upla è una funzione che associa a ciascun attributo nell'insieme di attributi un valore del dominio dell'attributo.

t[A] è il valore della tupla sull'attributo A.

### Istanza di relazione

Insieme di ennuple definite sugli attributi dello schema di relazione.

### Istanza di base di dati

Insieme di relazioni istanziate in base al loro schema.


## Strutture nidificate

Lo stesso frammento di realtà può essere rappresentato con più schemi, equivalenti per contenuto informativo.

Valore nullo: nessuna informazione disponibile.

## Vincoli di integrità

Esistono istanze di basi di dati, che pur corrette, non rappresentano stati possibili della realtà.

Vincoli di integrità: proprieta che deve essere soddisfatta da tutte le istanze di uno schema che rappresentano informazioni corrette per l'applicazione.

Un vincolo di integrità è una funziona booleana che per ogni istanza R ci dice se questa è corretta o scorretta.

Perchè ci servono i vincoli di integrità? Permettono di rappresentare la realtà in modo più accurato. Sono utili nella progettazione perchè ci permettono di progettare uno schema di elevatà qualità.

### Tipologia di vincoli

Vincoli intra-relazionali: definiti all'interno della relazione
 * Vincoli di dominio: su un singolo attributo
 * Vincoli di ennupla: definiti sulle singole ennuple
 * Vincoli di relazione: affermano una proprietà dell'insieme di n-uple di una relazione
  * Vincolo di chiave
Vincoli inter-relazionali: definiti tra due o più relazioni


### Vincolo di chiave

Nasce dal bisogno di identificare univocamente una ennupla e di rappresentare ogni oggetto di interesse con una ennupla per forza diversa

#### Chiave

Insieme di attributi che identificano le ennuple di una relazione. 

Formalmente:

* un insieme di attributi K è superchiave per una relazione r se r non contiene due ennuple distinte con t1[K]=t2[J]
* K è anche chiave se è una superchiave minimale (cioè non contiene un altra superchiave)

Una relazione non può contenere ennuple distinte ma uguali: ogni relazione ha come superchiave l'insieme dei suoi attributi, quindi ha almeno una chiave. 

Le chiavi ci permettono di collegare tra loro i dati in relazione diverse. Attraverso le chiavi possiamo accedere ad ogni dato della base di dati.

## Valori nulli

Esistono tra tipi di valore nullo:

* valore sconosciuto: esiste ma non lo conosco
* valore inesistente: non esiste
* valore senza informazione: non si può dire niente, non sappiamo se esiste, e anche se esistesse non potrebbe conoscerlo

I DBMS non distinguono tra i vari valori nulli.

In presenza di valori nulli, i valori della chiave non permettono di svolgere le due funzioni della chiave:

* identificare le ennuple
* esprimere riferimenti

La presenza di valori nulli nelle chiavi deve essere limitata!

Emerge il concetto di chiave primaria: una chiave su cui non sono ammissibili valori nulli.

## Vincolo di integrità referenziale

Esprime le proprietà per cui informazioni con stesso significato in relazioni diverse sono correlate. rispetto alla proprieta per cui non è possibile che un oggetto della realtà 1) sia rappresentato nella sa relazione con un altro oggetto e 2) non sia rappresentanto e identificato nella tabella che lo descrive nativamente

Più precisamente: un vincolo di integrità referenziale (foreign key) fra un insieme di attributi di R1 e un'altra relazione R2 impone ai valori X in R1 di comparire come chiave primaria in R2.

Cosa fare quando elimino: 1) rifiuto l'operazione 2) elimino in cascata 3) introduco valori nulli
