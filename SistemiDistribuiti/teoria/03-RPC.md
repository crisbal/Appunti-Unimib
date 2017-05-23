# RPC

Estensione distribuita alla normale chiamata di una procedura.

## Vantaggi

* Sono semanticamente chiamate di procedura
* Facilmente implementabili

## Svantaggi

* Esplicitamente realizzate dal programmatore
* Statiche: scritte nel codice
* Generalmente bloccanti

## Tipologia di chiamate

### Chiamata Sincrona

Al pari di una richiesta HTTP sincrona ad un server, faccio la richiesta, aspetto (bloccandomi) la risposta, riprendo la mia esecuzione.

### Chiamata asincrona

Invio la richiestra, aspetto un ACK, riprendo l'esecuzione. Prima o poi arriverà la risposta.

## Architettura

Il client ha metodi stub (circa placeholder) che al posto che eseguire la procedura mandano la richiesta al server, il server ha metodi stub che ricevono la richiesta e che in seguito eseguono la procedura.

## Passaggio di parametri

Alla chiamata del metodo stub i parametri vengono pacchettizzati/serializzati e inviati al server (marshalling). Il server deserializza/spacchetta i parametri ed esegue le procedure.

Il passaggio di parametri è puramente per valore.

# RMI

RMI = remote method invocation

## Caratteristiche

* Ad oggetti
* Agli oggetti ci si riferisce con indirizzo + porta + id/nome oggetto

## RMI

E' un middleware che:

* fornisce servizi avanzati
	* garbage collection
	* gestione oggetti replicati e persistenti
	* multithreading
* supporta l'invocazione tra oggetti in JVM distinte
	* si passano oggetti Java
	* le classi sono caricate dinamicamente
* si basa sulla portabilità del bytecode
* faccio OOP su un sistema distribuito
* supporta invocazioni statiche e dinamiche

 
## Implementazione

Il client chiama il metodo di un oggetto interfaccia. La chiamata passa attraverso un proxy che la invia al server dove uno skeleton (l'opposto del proxy) riceve la richiesta. Lo skeleton attraverso un oggetto interfaccia effettua la chiamata dei metodi.

