# Web Services

Un WebService è una applicazione identificata da un URI le cui interfacce e binding possono essere descritte, definite e scoperte tramite documenti XML e con cui è possibile interagire direttamente usando messaggi basati su XML attraverso i protocolli di Internet.  

Un WebService è un applicazione self-container, self-describing, modulare che può essere pubblicata, identificata e utilizzata su Web.

## Vantaggi

* più flessibili e stabili dei sistemi classici
* combinabili tra di loro per formare nuovi processi di business
* efficienti e scalabili
* specifica standard
* possibilità di integrarsi con i sistemi legacy

## Caratteristiche principali

* Indipendenti
* Con una interfaccia conosciuta e standard
	* Attraverso un linguaggio descrittivo come WSDL
* Accessibili tramite un URI 
	* Scopribili tramite degli index (UDDI)
* Parlano documenti XML

## Entità coinvolte

* Providers
	* Quelli che fanno il web service
* Brokers/Indexer
	* Quelli che lo mettono a disposizione / indicizzano
* Richiedenti
	* Quelli che lo usano

## Operazion che posso fare su un Web Service

* Pubblicarlo
* Trovarlo
* Interagirci

## Composizione di Web Service

I web service possono essere combinati tra di loro per creare una pipeline/workflow che va a soddisfare un processo business. La combinazione ottenuta può essere usata nella creazione di altri WebService.

* Componibili
	* Orchestrazione: descrive come i web services interagiscono tra di loro a livello di messaggio, includendo la business logic e l'ordine di esecuzione delle interazioni. E' rispetto alla prospettiva di un singolo endpoint.  
	* Coerografia: descrive la sequenza di messaggi che potrebbero coinvolgere più web services. Definisce lo stato condiviso della interazioni tra le varie entità.

### BPEL

BPEL è un linguaggio di definizione basato su XML che aiuta nella definizione di processi di business coinvolgenti vari WebServices. 

#### Struttura

BPEL usa WSDL per specificare le varie attività. Ogni processo BPEL è un WebService esposto usando WSDL. 

Un documento BPEL è strutturato in 5 parti:

* message flow: il flow basilare, invocare le operazioni, aspettare il completamento di altre e generazione della risposte
* control flow: definisce stati e transizioni nel flow
* data flow: le variabili che tengono messaggi riguardi lo stato del processo
* fault & exception handling: gestione degli errori
* orchestration: per relazione p2p ?!?!?!?

## WSDL

Descrive Web Service e come accederci.

In particolare:

* elenca e descrive le operazioni pubbliche del WS
* dichiara i tipi di dati per le richieste e le risposta
* informazioni sul protocollo di trasporto
* informazioni di indirizzamento per localizzare il WS

### Tipologia operazioni WSDL

* One-way: senza risposta
* request-response: la classica, ricevi subito risposta
* solicit-response: aspetto finchè non hai una risposta
* notification: non aspetto la risposta, pingami quando ce l'hai


## SOAP

Protocollo basato su XML per far parlare WS e applicazioni sul Web.

* SOAP è stateless
* ignora la semantica dei messagi
* incapsula tutte le interazioni tra due endpoint
* lascia il resto ai layer sottostanti

### Messaggio soap

* Envelope: che definisce i contenuti del messaggio (a chi è destinato e di che tipo è)
* Header: contiene informazioni su come processare il messaggio e autenticazione
* Body: il contenuto del messaggio

## UDDI

Per risolvere il problema di fare la disovery di altri webservices 

Vari approcci possibili: 

* approccio registry based
	* autoritativa, controllata da un entità in particolare
	* il proprietario decide quando e cosa pubblicare
	* UDDI
* approccio index
	* Non autoritativo
	* La pubblicazione è passiva
	* ognuno può creare un index
	* Ad esempio Google
* p2p discovery
	* i WS si scoprono a vicenda in modo dinamico

### Cosa è UDDI

UDDI è una iniziativa industriale con lo scopo di rendere semplice, veloce e dinamico trovare WS. 

UDDI è sia una specifica tecnica che un registro su cui si possono fare query. Con UDDI si parla in SOAPP


# REST

## REST vs SOAP

Transport protocol

* REST: HTTP
* SOAP: several protocols (e.g., HTTP, TCP, SMTP)

Message format

* REST: several formats (e.g., XML-SOAP, RSS, JSON)
* SOAP: XML-SOAP message format (Envelope, Header, Body)

Service identifiers

* REST: URI
* SOAP: URI and WS-addressing

Service description

* REST: Documentazione Testuale or Web Application Description
Language (WADL)
* SOAP: Web Service Description Language (WSDL)

Service composition

* REST: Mashup
* SOAP: BPEL

Service discovery

* REST: no standard support
* SOAP: UDDI

## Principi REST

* Le risorse sono definite da URI
* Le risorse sono manipolate dalla loro rappresentazione
* Ci sono più rappresentazioni per una risorsa
* I messaggi sono stateless
* Lo stato è dettato dalla manipolazione di risorse

## Vantaggi REST

* Posso fare il caching (cisto che è stateless)
* Una stack software molto piu semplice.

Usato per applicazioni CRUD (CREATE READ UPDATE DELETE)

## Design REST

Nome+Verbo+Content Type

wikipedia/pagina + GET + html

