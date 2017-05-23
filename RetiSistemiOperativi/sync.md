# Sincronizzazione

Per avere consistenza tra dati condivisi

Per Necessità di esecuzione ed accesso a risorse condivise

## Tentative Producer
Potrei mettere una variabile `empty` che diventa true quando il buffer ha spazi vuoti.
Il consumatore legge solo se non è empty.
Problema: genera race condition.

Il consumatore potrebbe interrompersi prima di settare empty=false. Il consumatore entra in esecuzione, si mette a consumare, setta empty=false. Il produttore riprende, setta anche lui empty=false, torna sopra. Succede casino di sync.

Il problema è che le variabili stato del buffer sono 3. Separate ed accessibili da entrambi i processi quando vogliono. SI potrebbero generare inconsistenze.

## Critical Section Problem
Definisco una sezione critica del mio processo. Un processo puo' eseguire la sezione critica se e solo se l'altro processo non sta nella sezione critica. 

Quindi è strutturata come entry section, critical section ed infine exit section.

### Implementazioni
I due processi stanno in while(not-my-turn) finchè non gli viene settato il suo turno.
C'è un problema, produttore e consumatore sono legati, si alternano il prod e il cons. Puo' funzionare er cose semplici. MA non per risorse condivise. 

### Requisiti
* Mutua esclusione, un processo nella sezione critica alla volta
* Progresso, se non ci sono processi nella sezione critica e alcuni ci vogliono entrare, prima o poi ci entra qualcuno.
* Attesa limitata, se un processo è in attesa il tempo di attesa è limitato. Non puo' stare in attesa in infinito.

### Da parte del sistema operativo
Dipende dal kernel che si vuole implementare. 
* K. non preemptive - il processo se entra in kernel mode non puo' essere interrotto
* Kernel preemptive - il processo puo' essere interrotto mentre in kernel mode, più efficiente ma più difficile da implementare

### Soluzione di Peterson 
Soluzione completamente SW. Quasi indipendente dall'HW. Basta che load + store non siano interruttibili.

Basata su una variaible turno.
E un array di 2 Boolean, flag, rappresenta una richiesta di ingresso. 

Processi che si alternano ma non per forza. 

```
do {
 flag[i] = true; //voglio entrare
 turn = j; //tocca a j
 while(flag[j] && turn is j)
    sezioneCritica
 flag[i] = false;
```

Rispetta i tre requisiti. La soluzione sembra perfetta, ma presenta alcuni punti deboli.

Funziona bene su 2 processi, ma su N processi inizia a diventare lento! 
Il requisito HW potrebbe non esserci ovunque, pur sembrando semplice. 
C'è busy waiting. Il while che non fa nulla.

## Soluzioni HW
C'è bisogno almeno di un minimo di HW, operazioni atomiche di leggi, modifica, scrivi ad esempio. 

Anche grazie al supporto dello scheduler dell'OS, in modo da fare cose senza busy waiting: implementazione semafori.

Si basano tutte sull'idea di locking. Potrei disabilitare gli interrupt, ma meh. Oppure potrei fare tutto grazie ad istruzioni HW apposite, come la TEST&SET e la COMPARE&SWAP.

In generale, acquisisco il lock, poi lo rilascio. 

Test&Set: Leggo il valore iniziale, setto a true, ritorno il valore iniziale.

Fincè la test and set è false (e nel mentre setto a true il lock) io aspetto. 
Appena posso entrare, entro. Alla fine resetto il lock. 

Compare&Swap: Leggo il valore della variaibli in mememoria, se è il valore che mi aspetto, lo setto con new-value, ritorno il valore iniziale.
Il lock è inizializzato a 0. Se il lock è a 0, lo metto a 1.
Per rilasciare metto il lock a 0. SI MA I VANTAGGI?


-----

## Mutex Locks
Meccanismo che da un lock e poi mi lascia rilasciarlo.
Sia acquire che release sono atomiche. 
La soluzione necessita di busy waiting, viene detta spinlock.

Si possono implementare semplicemente con un boolean simil test&set o compare&swap

## Semaforo

Supera il busy waiting. 
E' una variabile intera a cui sono associate primitive.
Wait, finchè S <= 0
Se S>0 decrementa

Signal: S++

Permette di far partire più processi non solo 2: counting semaphore.
Se count==2 è un mutexlock

Posso eseguire controlli sull'ordine di esecuzione dei processi, usarlo appunto come un semaforo, per far aspettare un processo.

### Implementazione

E' necessario che le operazioni di wait / signal siano atomiche.
C'è comunque busy waiting.
Serve un'implementazione semaforica con funzioni dell'OS, la block e la wakeup. 
Ogni semaforo ha quindi una coda di attesa.

Se il semaforo è occupato, il processo si sospende e si inserisce nella coda di attesa.  Quando effettuo la signal il primo processo
della queue viene svegliato.

Se quando faccio la wait il semaforo non è disponibile, mi blocco.

### Problemi
* Potrei andare in deadlock, un processo aspetta che l'altro smetta di usare il semaforo, e viceversa. Pur avendo le primitive ci possono esserci problemi nel come si scrive il SW.
* Starvation, un processo rimane bloccato nella coda di attesa, potenzialmente all'infinito.
* Problemi con la gestione di priorità

### Problema dello stallo
E' il problema dei filosofi.
Potrei fare wait(i, i+1), release(i, i+1). Ma non va bene! Stallo.
Se ognuno prende la bacchetta alla DX, nessuno ha la bacchetta SX, tutti muoiono di fame. 
La soluzione è nella creazione di asimmetrie, ad esempio uno prende prima la SX, mentre l'altro prima la DX. 
Oppure acquisire le bacchette solo se sono entrambe disponibili.

-----

Problemi con i semafori: ci puo' essere comunque deadlock e la staravation, se non implemento correttamente. 

# Monitor 

Astrazione di alto livello per la sync tra processi, eliminando criticità.

Un monitor è un insieme di procedure, delle variabili condivisie e un codice di init. Solo un processo puo' essere eseguito in ogni momento. Le procedure gestiscono dati condivisi dentro il monitor.

All'interno del monitor posso definire condition variables. Se faccio x.wait() aspetto finchè non c'è una x.signal(). Ad ogni cond. variables è associata una coda. 

Alla x.wait() posso dare un valore di priorità. 

## I filosofi

* Monitor
  * enum stato[5]
  * condizione self[5]
  * pickup
	* stato[i] = hungry
	* test(i) //posso acquisire
	* se stato != mangiando -> self[i].wait;
  * putdown
  	* stato[i] = pensa
	* test(i+1) //passa le bacchette
  	* test(i) //passa le bacchette
  * test(i)
	* se quello dopo non sta mangiando, e io sono affamato e quello prima non sta mangiando
	  * allora mangio io
	  * altrimenti signalo(i)
	* init
	  * tutti pensano

In questa soluzione non c'è deadlock, ma è possibile la starvation.

# Sync su Windows
* Si usa lo spinlock
* Altrimenti ci sono i dispatcher objects (mutex, semafori, eventi, timer)

# Linux
* E' preemptive
* Supporta tutto e anche le operazioni non interruttibli
* Con pthred
  * Condition variables
  * Mutex
  * read-write locks
  * spinlock 

# Perchè lo spinlock è preferibile?

Solo nei multiprocessori, perchè cosi' evito context switch inutili.

---------

+ Mutua esclusione
+ Possesso e attesa
+ Assenza di prelazione
* Attesa circolare

# Ranking risorse

I processi chiedono le risorse in ordine crescente/decrescente. ?

# Evitare stati rischiosi

Evitare che un processo ha risorse ma ne sta aspettando altre, e l'altro processo ha risorse, e ne aspetta le altre. Entrambi aspettano che uno si completa. 
Ogni volta che devo allocare una risorsa mi serve quindi un algoritmo che mi dice come allocare la risorsa. 

## Algoritmo del banchiere

Andrebbe generalizzato ad N tipi di risorse. Consideriamo ora il caso di una risorsa sola

### Implementazione

```
n_processi = i
request[i] = quante ne richiedo
need[i] = risorse che ha bisogno il processo i in totale
assigned[i] = risorse assegnate in questo momento al procetto i
available = int

if requst[i] > need[i]:
	error
if request[i] > available:
	fail
if check(i):
	available -= request[i]
	need[i] -= request[i]
	assigned[i] += request[i] 

def check(i):
	kassigned[]
	kread[]
	kavailable
	exit[]
	kavailable = available-request[i];
	kread[i] = kread[i] - request[i]
	kassigned[i] = kassigned[i] + request[i]
	j = 0
	do:
		if !exit[j] && kread[j] <= kavailable:
			kavailable = kavailable + kassigned[j]
			exit[j] = true
			j = -1
		j = j + 1
	while( j < NProcessi )	
```

problema: non è un controllo fattibile su tutte le risorse, se ho tanti processi, dovrei fare tanti controlli

Al posto che evitare gli stati critici potrei fare 
