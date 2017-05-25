# Concorrenza in Java

Un programma sequenziale ha un singolo thread di controllo

Un programma concorrente ha più thread di controllo che gli permettono di svolgere diversi compiti in parallelo ed eventualmente di controllare molteplici attività, anche esterne, che hanno luogo nello stesso momento.

Un software parallelo può girare sia sulla stessa macchina, comunicando per memoria condivisa, oppure su macchine diverse, comunicando tramite rete.

## Perchè

* Per sfruttare i processori multi-core
* Per evitare di bloccare l'intera esecuzione di un'applicazione a causa dell'attesa del completamento di un un'azione di I/O
* Per strutturare in modo più adeguato un programma, in particolare programmi che
	* interagiscono con l'ambiente
 	* controllino le diverse attività
 	* gestiscano diversi tipi di eventi
	* mentre forniscono funzionalità ad un utente umano

## Processi e Thread

Un processo ha un PID, uno spazio di indirizzamnto privato e un descrittore. Un thread è un processo leggero. Per gestire i thread un processo deve avere stack multipli. Anche i thread hanno un descrittore.

Per parlare tra processi si deve usare le pipe, le socket o addirittura middleware o DBMS, invec i thread di uno stesso proceso comunicano attraverso la memoria condivisa.

## Thread in Java

O tramite `extends Thread`, e (ri)definendo il metodo `run()`, oppure tramite `implements runnable` e definendo il metodo `run()` (in questo caso faccio `new Thread(new MyRunnable())`)

Quando un thread termina (cioè `run()` fa `return`) non può essere ripreso, perchè, giustamente ha finito di fare il suo lavoro.

## Codice

Thread.sleep(millisecondi)

Facendo sleep si può generare una InterruptedExecption che va catturata e gestita

## Gestione accesso risorse condivise

Attraverso il flag `synchronized` posto sulla firma dei metodi, quando si crea l'oggetto viene istanziato anche un suo lock intrinseco che gestisce l'accesso ai metodi.

In un determinato istante, per un determinato oggetto ci puo' essere al massimo un thread all'interno di un metodo synchronized.

Usare synchronized introduce un ordinamento tra le chiamate ai metodi. Quando si chiama un metodo synchronized si viene messi in una coda da cui si esce secondo una logica FIFO.

### Dettagli aggiuntivi

In caso di metodi statici synchronized il lock viene posto sul Class Object relativo al metodo.

I costruttori non  possono essere synchronized (solo il thread che crea l'oggetto può avere accesso ad esso mentre viene creato).

## Accesso condizionato alle risorse

Metodo wait() che:

* rilascia il lock sull'oggetto
* sospende il thread fino alla ricezione di un segnale di notifica sull'oggetto stesso da parte di un altro thread

Metodo notify() / notifyall():

* risveglia un thread (non deterministico) o tutti i thread (notifyall) che erano in attesa volontaria (wait)

Date le problematiche di interferenza e il contesto concorrente non basta un if per verificare la condizione di accesso al metodo ma si deve sempre fare un while.

Nel mio diagramma degli stati c'è un nuovo stato: wait perchè notify non sveglia i processi blocked

### Monitor in Java

Costrutto che permette ai thread:

* di avere mutua esclusione nell'accesso a determinati blocchi di codice
* poter bloccare un thread in attesa del verificarsi di una condizione
* poter segnalare ai thread in attesa che le condizioni in merito al costrutto sono cambiate e va valutato se attendere ancora

Di quante code è dodato un monitor?

* Una per i thead bloccanti del meccanismo synchronized
* Una per i thread che si sono messi in wait

## Problematiche della programmazione concorrente

Liveness: si intende il fatto che, nonostante i componenti attivi concorrenti siano attivi, e debbano "fare a turno" per entrare nelle sezioni critiche di un programma, il programma è in grado di progredire correttamente evitando i problemi

### Deadlock

Situazione per la quale ogni membro di un gruppo di azioni è in attesa di una risorsa tenuta in ostaggio da un altro membro: attesa circolare interminabile.

Per verificare un deadlock deve verificarsi:

* mutua esclusione: le risorse rilevanti per il sistema non devono essere condivisibili
* hold and wait: accumulo incrementale, processi che sono in possesso di una risorsa ne richiedono altre senza rilasciare le risorse che ha già
* no preemption: una risorsa è rilasciabile solamente da chi la detiente e non dallo scheduler
* attesa circolare, tutti sono in attesa di risorse di altri

### Starvation

Una situazione di starvation si verifica quando, nonostante non ci sia deadlock un'attivita' non riesce mai ad accedere ad una risorsa. Questo generalmente succede per colpa dello scheduler o per colpa di una scorretta gestione della mutua esclusione.

-----

* Liveness: assenza di deadlock -> nonostante tutto almeno un processo va avanti
* Liveness: libertà da starvation -> tutti i thread riescono a progredire

### Livelock

In una certa situazione i processi non sono bloccati ma alla fine non progrediscono.

Esempio: due persone che si salutano, una inchinandosi ed una stringendo la mano (nemmeno troppo astratto: diversi protocolli distribuiti hanno necessità di effettuare operazioni sincronizzate e quindi di fare handshake)

## Esempi

### Filosofi a cena

* 5 filosofi
* 2 forchette per mangiare
* la forchetta non è condivisibile
* al massimo 2 mangiano insieme, ad un certo punto si arriva al deadlock

Soluzione di Dijkstra:

* Tutti prendono sinistra destra
* L'ultimo prende destra sinistra

* Vantaggio: non richiede un attore centrale, un controllore
* Svantaggio: va bene per un sistema statico

Altra soluzione:

* inserire un controllore globale che dice quando si può prendere una bacchetta
* fare comunicare i filosofi tra di loro

### Lettori e scrittori

Abbamo una risorsa condivisa che può essere letta da più thread in contemporanea ma il cui accesso in crittura deve invece essere esclusivo.

I thread sono classificati sulla base dell'intenzione e del tipo di accesso.

In sostanza:

* la lettura non e' sincronizzata, solo il controllo che non ci siano scrittori deve esserlo
* la scrittura deve essere completamente sincronizzata: ma non deve avvenire se uno sta leggendo
* nella risorsa condivisa è necessario mettere due contatori: uno per il numero di lettori e uno per gli scrittori