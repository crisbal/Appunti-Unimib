# Inter process communication

Due processi devono poter comunicare, ad esempio per modularità o perchè sono proprio diversi.

Classico problema produttore consumatore. I due devono comunicare. Serve un buffer per farli parlare, un area di memoria.
Il buffer può essere di dimensione limitata o illimitata. Se il buffer ha dimensione fissa il produttore non puo' generare info all'inifinito se il consumatore non consuma.

## Shared memory
Area condivisa, visibile sia al processo A che al processo B. Si può fare unidirezionale, se un processo è messo in read only. 
E' tutto implementato a livello "utente" programmatore, il sistema operativo agisce solo per creare la memoria condivisa. 

Problema: c'è da sincronizzare i due processi. Lo vedremo dopo.

Come crearla. Definisco un buffer, array di item, e due puntatori, in che dice dove posso scrivere e out dove devo leggere. I due puntatori si spostano e fanno il wrap around, buffer circolare. 

Il produttore all'infinito produce, controlla se c'è spazio e scrive, aggiorna indice in. Se in+1=out allora è buffer pieno, allora aspetto.

Il consumatore per prima cosa aspetta che ci sia qualcosa, lo legge ed incrementa il puntatore ad out. 

In queste implementazione occupiamo BUFFERSIZE-1 elementi.


## Message passing

I processi che devono comunicare usano il sistema operativo. 
Il sistema operativo gestice una message queue FIFO.

P and Q devono rivolgersi al sistema operativo per stabilire il canale. 

Ci potrebbero essere situazioni in cui un processo parla a molti.  

### COmunicazione diretta

send(toP, message)
receive(fromQ, message)
I link sono stabilitti automaticamente
1 link è associato con una coppia di processi che comunicano.  Il link puo' essere sia uni che bi direzionale. 

### Comunicazione indiretta
Concetto di mailbox (porta)
Ogni mailbox ha un id/nome.
I processi condividono la mailbox. 
le primitive fanno ref alla mailbox.


## Comunicazione sincrona e asincrona

Sincrona = blocking
Non sincrona = non blocking

Se send e receive sono bloccanti devono fare un randevouz e si sincronizzano.

## Buffering

Zero capacity, 1 solo messaggio alla volta tra sender e receiver, uno aspetta l'altro.

Capacità illimitata: faccio come voglio, ogni modalità async / sync è buona

Capacità limitata: Il sender deve aspettare se il buffer è pieno. 


# Posix Shared memory

shm_open()
ftruncate() set size  
sprinft() ci scrivo e leggo

# Sistemi a messaggi
msg_send()
msg_receiver()
msg_rcp() remote procedure call

mailbox vengono allocate con port_allocate()
  

# Socket 
Endpoint della comunicazione
Disponibili sul 90% dei S.O.
Si comunica attraverso indirizzo ip + porta. 

# Remote procedure call
Chiamare una procedura che sta su un host remoto. In locale deve esserci un pezzo di codice che ha come scopo di fare da proxy verso l'host. 
Pero' ci possono essere dei problemi di rappresentazione dei dati (big endian little endian) 

# Pipes
Comunicazione intra-sistema, stile socket ma interne
Ma si possono usare anche in rete.

Ci sono le pipe ordinarie, accessibili solo da processo genitore verso processo figlio.

Ci sono le named pipes, generali, posso accederci ogni processo. Comunicazione bi-direzionale. Non deve esserci relazione tra i processi. Più processi posso usare la stessa pipe.


