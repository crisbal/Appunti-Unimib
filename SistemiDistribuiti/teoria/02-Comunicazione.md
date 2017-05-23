# Comunicazione

## Tipologie di Comunicazione

* Comunicazione Persistente: il middleware delle comunicazione memorizza il messaggio finchè il destinatario non è pronto a riceverlo
* Comunicazione transiente: se il ricevente non è collegato, il messaggio viene scartato dal middleware

Oppure ancora:

* Asincrona, mando il messaggio e non aspetto che il ricevente accetti la comunicazione
* Sincrona, mando il messaggio, aspetto la risposta, solo poi proseguo l'esecuzione

Combinando otteniamo:

* persistent async: invio il messaggio e vado avanti, il middleware fa lo store del messaggio
* persistent sync: invio il messaggio e vado avanti solo quando il middleware lo ha ricevuto del tutto e mi da l'ok
* transiente async: invio il messaggio solo se B è connesso, intanto vado avanti enlla comunicazione, B lo elbora con calma quando vuole
* transiente sync: invio il messaggio solo se B è connesso, vado avant solo quando ho l'ACK di B

Inoltre ho le seguenti:

* delivery-based transient sync: invio il messaggio, B lo riceve e riprendo l'esecuzione quando B si mette a processarlo
* response-based transient sync: invio il messaggio, B lo riceve, produce una risposta, me la invia, proseguo ad eseguire dopo la risposta.

## Message oriented communication

### Message queues

Un modo per realizzare la comunicazione tramite messaggi è attraverso delle message queues: delle code a storage di medio termine che non richiedono ne il trasmettitore ne il ricevitore attivo durante la trasmissione del messaggio. 

Le posso usare attraverso 4 metodi:

* put, per fare il submit di un messaggio
* get, per ottenere in modo bloccante il primo messaggio
* poll, controllare in modo non bloccante la coda ogni X secondi
* notify, creare un handler di callback che viene chiamato quando arriva un messaggio

Non c'è garanzia del quando il messaggio viene ricevuto e nemmeno di quello che il ricevente ne farà. Si ha solo la conferma di aver aggiunto il messaggio alla coda.

le queue sono gestite da un queue manager, che si prende carico di dare i messaggi ai riceventi. Possono fare anche da relay: cioè mandare i messaggi da una queue all'altra. Ci potrebbero essere più queue per motivi di dimensione del sistema o per problemi legati al naming.

### Message Broker

Necessario per convertire da un formato standard ad un formato capibile dalla applicazione. Si pone tra l'applicazione e le varie code di messaggi. Offre anche altre funzioni di utility all'applicazione che altrimenti dovrebbe implementare nativamente.

Un message broker permette anche di costruire un sistema di publish e subscribe, cioè faccio publish di un messaggio in un determinato topic e questo messaggio viene recapitato a tutti gli host che hanno fatto subscribe per quel topic.

## Stream oriented communication

Questo tipo di comunicazione avviene tramite le socket. 

Una socket è una connessione esplicita tra due host, in cui avviene una comunicazione attraverso un flusso di byte. Per effettuare questa comunicazione vengono usate le direttive read e write offerte dal sistema operativo sottostante.

Read e Write sono bloccanti, usano un buffer per garantire flessibilità e safety.

Lato server: socket, bind, listen, accept, read+write, close
Lato client: socket, connect, write+read, close

### Server

I server possono essere:

* iterativi
	* sodisfano una richiesta alla volta
* concorrenti processo singolo
	* simulano la presenza di un server dedicato
* concorrenti multi-processo
	* creano server dedicati
* concorrenti multi-thread
	* creano thread dedicati

