# Domande

**Quando un thread, in un programma Java, riceve una notifica attraverso il metodo notifyAll, in quale stato viene spostato?**

Stato di Ready

**Un vantaggio della virtualizzazione è che**

Viene garantita l'integrità del sistema anche a fronte di fallimenti software

**In JS è possiible modificare dinamicamente il contenuto e la struttura di una pagina HTML; per selezionare un elemento della pagina:**

Si possono usare funzioni di base (come document.getElementById) oppure funzionalità offerte da framework come i selettori jQuery.

**Quali vantaggi o svantaggi comporta un'organizzazione a messaggi di lunghezza fissa**:

Semplificazione della gestione dei buffer.

**Le applicazioni AJAX/JSON sono più efficienti di quelle AJAX/XML?**

Si perchè i dati JSON sono in formato compatibile con JS.

**Le applicazioni native in Android in che formato sono?**

Sono in .apk

**Quali sono le informazioni necessarie contenute in una reference Java RMI?**

* Indirizzo IP
* Porta
* ID Univoco oggetto

**Dare la definizione e descrivere le caratteristiche delle architetture NOS, DOS e Middleware. In particolare illustrando i 3 aspetti principali di cui ogni sistema distribuito deve occuparsi e discuterne come sono trattate nelle architetture citate.**

**DOS**

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

**NOS**

Un sistema operativo senza coesione che collega macchine eterogenee. Le macchine devono solo poter comunicare tra di loro. 

* Gli utenti sono coscienti del fatto che ci siano più macchine
* NOS permette di comunicare tra processi tramite socket
* NOS permette l'esecuzione concorrente di processi
* I servizi (come la migrazione dei processi o il load balancing) sono gestite dalle applicazioni
* L'accesso alle macchine del NOS è fatto esplicitamente

**Middleware**

Implementa servizi su un NOS per renderlo trasparente alle applicazioni. JavaRMI

Il middleware si mette a metà tra il NOS e le applicazioni.

Offre servizi come:

* naming
* trasparenza di accesso
* persistenza
* transazioni
* sicurezza

Il middleware in realtà è implementato come una applicazione che sta sopra il sistema operativo. Si connette agli altri componenti del sistema distribuito attraverso una comunicazione tramite rete parlando lo stesso protocollo.

**Tipi di passaggi parametri che si possono realizzare in un sistema a oggetti distribuiti**

I tipi primitivi e gli oggetti serializzabili per valore.

I riferimenti ad oggetti remoti vengono passati per valore, ma saranno usate per invocazioni remote.

**Illustrare graficamente l'architettura 3 tier nel caso del paradigma Ajax. Discutendo dal punto di vista dell'evoluzione: dove si collocano la tecnologie Servlet e JavaScript?**

MVC: Model View Controller?

**Cosa si intende per RPC asincrono?**

E' una chiamata di procedura remota nella quale non si blocca il programma che invia la richiesta per aspettare il risultato ma al massimo, dopo aver inviato la chiamata al metodo, si aspetta un ACK che conferma l'avvenuta chiamata del metodo. Il risultato sarà poi comunicato al chiamante successivamente.

**Cosa è e a cosa serve la serializzazione**

La serializzazione serve per rappresentare un oggetto come flusso di byte, in modo da poterlo inviare in remoto o salvarlo in locale.


**Validare i dati insieriti dall'utente in un form web senza adottare una tecnologia di Scripting lato client**

Lato client attraverso i tag e gli attributi HTML5. Lato server attraverso un linguaggi server side.

**Le variabili in javascript sono** 

Non tipizzate.

**Per qualsiasi richiesta HTTP (get o post) secondo il modello Servlet quale metodo sarà invocato per primo?**

`service()`

**Il modello detto hyper conytol dello stile architetturale REST significa che...**

**Tramite l'utilizzo di tecniche AJAX:**

E' possibile rendere una pagina reattiva ad eventi generati dall'utente ma anche eseguire ciclicamente funzioni JavaScript indipendentemente da stimoli da parte dell'utente.