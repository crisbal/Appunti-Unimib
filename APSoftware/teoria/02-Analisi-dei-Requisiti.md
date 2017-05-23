# Analisi dei Requisiti

## Requisiti

I requisiti sono una descrizione di ciò che il sistema deve fare: i servizi che deve fornire e vincoli operativi a cui deve sottostare. 

### Ingegnerizzazione dei requisiti

E' il processo di ricerca, analisi, documentazione e verifica dei servizi richiesti dal cliente e i vincoli entro i quali i servizi devono operare.

## Requisiti utente e di sistema

* **Requisiti utenti**, espressi in linguaggio naturale (e completati con diagrammi), ci dicono quello che il sistema deve offire e i vincoli operazionali. Sono scritti per i clienti e devono quindi essere comprensibili dagli utenti non tecnici.
* **Requisiti di sistema**, definiscono precisamente e dettagliatamente quello che deve essere implementato. E' il punto di contatto tra il compratore e gli sviluppatori software. Stanno alla base per il progetto della soluzione.

E' importante scrivere i requisiti a diversi livelli: tutte le parti coinvolte nel progetto devono essere in grado di leggerli!

## Requisiti funzionali e non funzionali

* **Funzionali**, i servizi che il sistema deve fornire, cioè come il sistema deve reagire agli input e come il sistema deve comportarsi in particolari situazioni. 
	* In alcuni casi i requisiti funzionali possono specificare quello che il sistema *NON* deve fare.
* **Non funzionali**, i vincoli imposti alle funzioni offerte dal sistema. Ad esempio vincoli temporali, sul processo di sviluppo e vincoli imposti da standard da rispettare. Sono generalmente applicati al sistema "as a whole" e non alle singole funzionalità.
	* Sono requisiti molto spesso critici: se non li si rispetta il sistema può essere inutilizzabile.

Sfortunatamente, nella realtà, questa divisione non è sempre così netta. 

E' possiible che i requisiti siano tra di loro dipendenti, una funzionalità può dipendere da un altrà, oppure una caratteristica del sistema può richiedere l'implementazione di una o più funzionalità.

### Requisiti non funzionali

I requisiti non funzionali li suddividiamo a sua volta in altre categorie:

* **di prodotto**, che specificano come il software deve comportarsi.
	* Si classificano a loro volta in requisiti di usabilità, efficienza (a sua volta in prestazionali e di spazio), affidabilità e portabilità.
	* Ad esempio: "L'interfaccia sarà implementata in HTML"
	* Usabilità, efficienza, prestazioni, spazio, affidabilità, portabilità
* **organizzativi**, che derivano dalle policies e dalle procedure adattate all'interno dell'organizzazione che richiede il software. 
	* Possono anche includere requisiti su come il software deve essere sviluppato (modello di processo, linguaggi, tecnologie)
	* Consegna, standard, implementazione
* **esterni**, che derivano da fattori esterni che influenzano il sistema.
	* Leggi e regolamenti.
	* Interoperabilità, etici, sicurezza, riservatezza

## Problemi nella raccolta dei requisiti

* **Ambiguità**, data dal fatto che i requisiti utente sono troppo generici. 
	* L'utilizzo di aggettivi come "appropriato" o "adatto" rende il requisito ambiguo: come capisco cosa vuol dire l'utente con "adatto"?
* **Incompletezza**, i requisiti non riescono a descrivere tutto quello che c'è nel sistema.
	* In pratica, nella SW. Eng., è impossibile descrivere tutto il sistema
	* E' necessario essere pronti a gestire i cambiamenti
* **Inconsistenza**, le descrizioni contengono conflitti e contraddizione.
	* E' raro avere consistenza. 
	* Ad esempio "l'utente riceve tutte le news pubblicate dall'accesso; le news dopo 7 giorni si cancellano", quindi deve riceve tutte le news o solo quelle degli ultimi 7 giorni?

Questi problemi non sono facilmente risolvibili, anzi sono spesso intrinsechi alal natura del progetto software. Una raccolta di requisiti potrebbe essere incompleta perchè il requisito di oggi è diverso dal requisito di domani. 


## Come scrivere i requisiti

Scrivere i requisiti in linguaggio naturale è molto pericoloso. Il linguaggio naturale, per sfortuna nostra, porta con se diverse problematiche:

* Ambiguità
	* una cosa si può fraintendere
* Mancanza di chiarezza
	* E' difficile essere precisi senza scrivere troppo testo
* Eccesso di flessibilità
	* una stessa cosa si può dire in molti modi diversi

Questo genera:

* Confusione tra requisiti
* Amalgama dei requsiti
* Mancanza di struttura

### Alternative al linguaggio natuale

Informali:

* Linguaggio naturale strutturato
* Modello visuale informale

Formali:

* Specifica testuale formale
* Modello visuale formale

### Scrittura dei requisiti

* Attraverso un formato standard utilizzato per tutti i requisiti 
	* Un po' come adottare delle convenzioni di codice
* Usare il linguaggio in modo consistente
	* Usare termini come DEVE e DOVREBBE 
* Evidenziare i concetti importanti
* Evitare il gergo informatico

Si potrebbe scrivere anche seguendo lo standard IEEE830 (Software Requirements Specifications).

#### Modello MoSCoW

Si classificano i requisiti in:

* Must
	* Una feature che il sistema DEVE avere
	* Priorità massima
* Should
	* Una feature che il sistema DOVREBBE avere
	* Priorità Alta
* Could
	* Una feature che il sistema POTREBBE avere
	* Priorità Media-Bassa
* Want/Wishlist
	* Una feature che si VORREBBE il sistema avesse, prima o poi
	* Priorità Bassa

	