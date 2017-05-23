# Design Pattern

Utili per:

* costruire software riusabile 
* evitare scelte che compromettano il riuso dei componenti
* migliorare la documentazione e la manutenzione

## Pattern

Un pattern è un problema specifico ricorrente. A questo problema specifico il pattern descrive una soluzione, che viene riutilizzata molte volte in modi non identici.

## Design Pattern

E' una regola tripartita che esprime la relazione tra contesto del problema e soluzione. Si occupa di definire aspetti chiave di una struttura di design comune.

In particolare identifica le classi e le istanze che ci partecipano, i ruoli di queste, le modalità di collaborazione e le responsabilità.

## Perchè i design pattern?

Per costruire una soluzione utile (ricorrente), utilizzabile (praticamente in un contesto) ed usata (provata sul campo): si aiutano gli sviluppatori a risolvere problemi già studiati.

## Pattern Creational

Sono dei pattern ceh forniscono astrazione del processo di istanziazione degli oggetti. 

Il sistema è reso indipendente da come gli oggetti sono creati, rappresentati e composti al suo interno.

### Esempi

* Builder: separa la costruzione dell'oggetto dalla sua rappresentazione. Posso usare più rappresentazioni per lo stesso oggetto.
* Abstract factory: fornisce un'interfaccia per la crazione di famiglie di oggetti in relazione senza specificare le classi concrete
* Factory method: definisce una interfaccia per creare un oggetto ma lascia decidere alle sottoclassi quale classe istanziare
* Pototype: specifica il tipo di oggetto da creare usando una istanza prototipo e crea nuovi oggetti copiano questo prototipo
* Singleton: assicuta che la classe abbia una sola istanza e fornisce un modo per accedere a questa istanza

## Pattern Structural

Sono dedicate alla composizione di classi e oggetti e sono utili per formare strutture complesse.

Rende possibile l'ereditarietà multipla.

Sono utili per fare in modo che librerie di classi indipendenti possano operare insieme.

### Esempi

* Adapter: converte l'interfaccia di una classe in un'altra permettendo a due classi di lavorare assieme anche se hanno interfacce diverse
* Bridge: disaccoppia un'astrazione dalla sua implementazione in modo che possano variare in modo indipendente
* Composite: compone oggetti in strutture ad albero per implementae delle composizioni ricorsive
* Decorator: aggiunge nuove responsabilità ad un oggetto in modo dinamico, è una alternativa alle sottoclassi
* Facade: fornisce un interfaccia unificata per le interfacce di un sottosistema in modo da facilitare il loro utilizzo
* Proxy: fornisce un surrogato di un oggetto per controllarne gli accessi
* Flyweight: usa la condivisione per supportare in modo efficiente un elevato numero di oggetti con granularità fine

## Behavioral

Dedicati all'assegnamento di responsabilità tra gli oggetti e alla creazione di algoritmi

Fanno da supporto per eseguire le comunicazioni che avvengono tra gli oggetti.

### Esempi

* Chain of Responsability: evita l'accoppiamento di chi manda una richiesta con chi la riceve dando a più oggetti la possibilità di maneggiare la richiesta
* Command: incapsula una richiesta in un oggetto in modo da poter eseguire operazioni che non si potrebbero eseguire
* Interpreter: dato un linguaggio definisce una rappresentazione per la sua grammatica ed un interprete per il linguaggio
* Iterator: un modo per accedere agli elementi di un oggettoi in modo sequenziale
* Mediator: definisce un oggetto che incapsula il modo in cui un insieme di oggetti interagiscono mantendo la loro indipendenza
* Memento: cattura e porta all'esterno lo stato interno di un oggetto senza violare l'incapsulamento
* Observer: definisce una dipendenza 1:N tra oggetti in modo che se uno cambia stato gli altri siano aggiornati automaticamente
* State: permette ad un oggetti di cambiare il proprio comportamento a seconda del suo stato interno, come se cambiasse classe
* Strategy: definisce una famiglia di algoritmi intercambiabili
* Template Methods: definisce lo scheletro di un algoritmo in un'operazione dove alcuni passi sono definiti nelle sottoclassi
* Visitor: rappresenta una operazione sugli oggetti, permette di definire nuove operazioni senza cambiare la classe

# Pattern: Adapter

* Tipologia: Strutturale
* Sinomimo: Wrapper
* Scopo: converte l'interfaccia di una classe in un'altra interfaccia richiesta dal client (quindi permette la cooperazione di classi che altrimenti avrebbero interfacce incompatibili)
* Motivazione: in alcune circostanze non si può utilizzare una classe già esistente solo perchè questa non comunica più con un interfaccia specializzata richiesta da un'applicazione 

## Esempio

* Un editor grafico usa una classe Shape per editare e visualizzare gli oggetti grafici
* Il progettista possiede una classe riusabile TextView per editare e visualizzare testo
* TextView non sa nulla di Shape
* Possiamo definire TextShape che incapsuli TextView e adatti la sua interfaccia a quella di Shape

## Applicabilità

Utilizzare una classe esistente la cui interfaccia sia incompatibilie

Creare una classe riusabile che dovrà collaborare con classi non prevedibili al momento della creazione


## Struttura

La classe Adapter eredità da due classi: l'interfaccia Target (usata dal client) e la classe Adaptee (che deve essere adattata). 

### Esempio

* Target: Shape
* Adaptee TextView
* Adapter: TextShape

## Partecipanti

* Client: collabora con oggetti conformi all'interfaccia target
* Target: definisce l'interfaccia specializzata usata dal client
* Adaptee: definisce una interfaccia che deve eessere resa conforme
* Adapter: adatta Adaptee all'interfaccia target

## Conseguenze

* Adapter fa override  del comportamento di Adaptee
* Prevede un rapporto di ereditarietà tra Adapter e Adaptee, in cui Adapter specializza Adaptee: non è possibile creare un Adapter che specializzi più Adaptee
* Se esiste una gerarchia di Adaptee occorre creare una gerarchia di Adapter

* Gli adapter possono funzionare in molti modi, dalla conversione di interfaccia  alla completa ridefinizione e integrazione dei metodi. 
* Prevede un rapporto di associazione tra Adapter e Adaptee. Un adapter può essere associato a più adaptee.

## Pattern Correlati

* Bridge
* Decorator
* Proxy

# Pattern: Strategy

* Tipologia: Behavioral
* Sinomino: Policy
* Scopo: definisce una famiglia di algoritmi ognuno in una classe e il rende intercambiabili fra loro. Questo permette di modificare gli algoritmi in modo indipendente dai client che ne fanno uso.
* Motivazione: in alcune circostanze sono necessari algortimi diversi in situazioni diverse per risolvere lo stesso problema. 

## Esempio

* Applicazione che offre funzionalità matematiche
* Considera la gestione di una classe che rappresenta vettori di numeri
* Metodi per la stampa MathFormat, StandardFormat
* Problema: isolare l'algoritmo di stampa per farlo variare in modo dipendente dal resto dell'implementazione

## Struttura

Contesto ---> Strategia 

Strategia viene specializzata in più classi di Strategy

## Partecipanti

....

## Cosa è

Semplicemente un'interfaccia che viene implementata su un oggetto.

## Applicabilità

* Più classi correlate variano soltanto per il loro comportaento
* Il pattern permette la configurazione di una classe con più comportamenti
* Utile per modellare la differenza fra diverse varianti
* Per nascondere all'utente strutture dati complesse dell'algoritmo.
* Per evitare tanti "if"

## Conseguenze

**Pro**

* definizione di famiglie di algoritmi
* alternativa alla gerarchia di classi
* eliminazione if
* scelta fra varie implementazioni

**Contro**

* gli utneti diventano consapevoli dell'esistenza delle strategie
* overhead di comunicazione
* incremento degli oggetti

## Pattern correlati

* Flyweight

## Esempio

Per calcolare lo sconto posso avere due strategy: AbsoluteDiscount e PercentageDiscount

# Composite

Risponde al problema: come comporre oggetti in strutture ad albero?

* Tipologia: Structural
* Scopo: comporre oggetti in strutturea d albero per rappresentare gerarchie

## Cosa Fa

* Definisce una gerarchia tra classi
* Il client tratta foglie e nodi allo stesso modo
* L'aggiunta di nuovi tipi di nodi e foglie è molto semplice
* Non è possibile utilizzare la tipizzazione per limitare il tipo di nodi che possono essere utilizzati come figli di un altro nodo

## Partecipanti

* Component: (Graphic) dichiara l'interfaccia degli oggetti e il suo comportamento di default, dichiara un'interfaccia per la gestione dei figli
* Leaf: (Line, Rectangle) rappresenta gli oggetti componenti senza figli e il loro comportamento
* Composite: (Picture) definisce il comportamento dei componenti figli, memorizza i componenti figli, implementa le operazioni correlate ai figli definite dall'interfaccia Component 
* Client: manipola gli oggetti della composizione usando l'interfaccia component

## Collaborazioni

* I client usano l'interfaccia component
* Se le richieste sono su una foglia: vengono gestite dalla foglia
* Se le richieste sono su un Composite: vengono redirette sulle classi figlie componenti

## Conseguenze

* Semplifico il client
* Rendo più semplice l'aggiunta di nuove tipologie di componenti

## Pattern Correlati

* Chain of Resp.
* Decorator
* Iterator
* Visitor
* Flyweight

# Pattern: Singleton

* Problematica: assicurare che una classe abbia una sola istanza con accesso globale

## Conseguenze

**Pro**

* Accesso controllato ad un'unica istanza
* Incapsula la crezione dell'oggetto
* In alcune implementazioni possiamo gestire un pool di istane invece che una singola istanza

**Contro**

* In alcune implementazioni ogni volta che l'oggetto viene richiesto viene anche controllata la sua esistenza
* Singleton non tratta la distruzione

# Pattern: Facade

* Problema: accesso diretto a numerose classi di un altro modulo

## Cosa fa

* Nasconde ai client il sottosistema
* Accopiamento lasco fra sottosistemi differenti
* Utile per migliorare l'integrazione tra componenti
* Fornisce un interfaccia unificata per un dato insieme di interfacce presenti in un sottosistema

## Applicabilità

* Interfacce semplici per sottoinsiemi complesse in presenza di troppe dipendenze fra client e classi
* Struttura a livelli in cui il facade funge da entrata ed uscita di ogni livello

Il facade conosce la struttura del sottosistema e delega agli oggetti interni più appropriati le richieste proveniente dall'esterno

E' una sorta di wrapper verso le classi più interne.

Nasconde il sottosistema al client, la complessità del sottosistema viene spostata nel Facade.

E' più facile modificare il sottosistema perchè basta cambiare la classe e il facade.

Riduce l'accoppiamento tra client e BO

Astrae il client dai dettagli implementativi di business

## Conseguenze

Promuove la portabilità del codice, la modularità, riusabilità del codice

Non è necessario che Facade presenti una barriera impenetrabile per il client, può essere conveniente che la stessa facade preveda la resistzione degli oggetti per permettere un accesso diretto ai client

Nel caso in cui si voglia tenere il client all'oscuro del funzionamento del sottosistema, le classi che rappresentano il sottosistema possono essere implementate come inner class della facade

## Vantaggi

Nascondi ai client i comportamenti del sottosistema, riducendo la complessità

Consente di cambiare i comportamenti senza il coinvolgimento del client

# Pattern: Observer

## Scopo

Definisce una relazione 1:n tra oggetti in modo che quando un oggetto cambia stato, tutti gli oggetti che dipendono da esso siano notificati e aggiornati automaticamente

Definisce uno schema 1:n tra due oggetti chiamati observer e subject: i primi osservano un evento del soggetto e, non appena quest'ultimo lo genera, gli osservatori vengono informati del cambiament di stato e aggiornano automaticamente le informazioni.

## Applicabilità

Quando un astrazione ha due aspetti, dipendenti. Implementare questi aspetti in oggetti separati permette al programmatore di modificarli e riutilizzarli indipendentemente.

Quando il cambiamento di stato implica il cambiamento di altri oggetti e non è noto in anticipo il numer degli oggetti che dovranno essere cambiati

Quando un oggetto deve essere in grado di notificare il proprio cambiamento di stato ad altri oggetti senza conoscere quali siano tali oggetti.

## Partecipanti

* Subject: conosce i suoi ossevatori che possono essere di numero indefinito, fornisce un interfaccia per aggiungere o eliminare oggetti Observer
	* Invia le notifiche di aggiornamento
	* E' collegato verso gli osservatori
	* attach(), detach(), notify()
* Observer: definisce un'interfaccia di aggiornamento che deve essere avvisata dai cambiamenti di un subject
	* Riceve le notifiche di aggiornamento
	* update()
* ConcreteSubject: contiene valori di interesse per  gli oggetti di ConcreteObserver, invia un abbiso ai suoi osservatori quando il suo stato cambia
* ConcreteObserver: fa riferimento ad un ConcreteSubject. Il suo stato è coerente rispetto a quello del Subject. Implementa l'interfaccia della classe observer per mantenere il suo stato coerente

## Conseguenze

* Permetti di variare i subject e gli observer indipendentemente
* E' possibile usare i soggetti senza il riutilizzo dei loro osservatori
* Notifiche in broadcast
* potrebbe generarsi una cascata di modifiche.