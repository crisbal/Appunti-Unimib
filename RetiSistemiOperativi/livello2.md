# Livello 2

Chiamiamo nodi i dispostivi, link i collegamenti. 

## Servizi forniti

* Framing: tutto viene incapsulato in un frame link-layer, varia a seconda dello standard usato.
* Link access: presenza di un protocollo di access control (MAC: medium access control) che specifica le regole di trasmissioni. 
* Consegna affidabile: come per il TCP ma di livello più basso. Usato quasi esclusivamente per le reti wireless. Molti protocolli non si impegnano a fornirlo perchè considerano i mezzi di trasmissione error-free.
* Error detection and correction: i protocolli forniscono metodi per capire se c'è un errore e in alcuni casi anche ripararlo.

## Chi lo implementa?

Viene implementato dal NIC (un hardware che insieme al sw riesce a gestire tutto)

## Error detection and correction

Delle volte pur essendoci errore potrei non accorgermente, perchè gli errori si bilanciano tra loro (molto unlikely)

### Bit di parità

Il numero di 1 + il bit di parità stesso deve essere un numero pari. Problema: 2 errori = 0 errori.

Quindi si usa il two-dimensional parity: strutturo una tabella e oltre che capire dove sta l'errore riesco anche a ripararlo in alcuni casi.

Queste tecniche di correzione evitano di ritrasmettere il pacchetto, aumentando però il lavoro sul ricevitore.

### Checksum (CRC)

Controllo ciclico di ridondanza.

Posso vedere la stringa di bit come un polinomio dai coefficienti 0 o 1.

**Funzionamento**

* Ho una stringa di d-bit di Data.
* Il sender e il receiver si accordano su un generator, di r+1 bit.
* Per ogni dato D il sender aggiunge r bit a caso (R), in modo che D sia di d+r bit e che sia esattamente divisibile per G. 
* Il ricevitore riceve D+R dal trasmettitore, lo divide per G e se il resto non è 0 c'è stato un errore. 

Come si sceglie R? 
A noi serve un R tale che D * 2^r + R = n * G
R = resto di (D * 2^r)/G

**Esempio**

Data: 10110101110
Generator: 1101 e len(G)=4

Data+zeros = Data & 000

10110101110000 | 1101
               ---------- 
           100 = resto = CRC

Invio Data & CRC

Receiver fa: 

Data & CRC | Generator

Deve fare resto = 0

---- 

Esiste un Generator Standard per il CRC-32.
Un CRC standard can detect al massimlo r+1 bit di errore.


## Multiple access protocols

Vogliamo che tutti i nodi parlino insieme.  Ma se tutti parlano insieme ci possono essere delle collisioni!

Se ci sono collisioni tutti i frame coinvolti vengono persi.

In generale un protocollo di accesso multiplo di broadcast a rate di R bps deve avere le seguenti caratteristiche:
* Quando un nodo deve inviare dati li invia ad R bps.
* Quando M nodi devono inviare dati, ogni nodo ha un throughout di R/M bps (inteso in average, non in un singolo momento).
* Il protocollo deve essere decentralizzato: nessuno SPOF.
* Il protocollo deve essre semplice e "stupido", economico in fatto di risorse nell'implementazione.

## Channel partitioning protocols
La cosa più semplice da implementare è il TDM e il FDM. 

TDM ci piace perchè tutti hanno R/N bps ogni slot di tempo. Problema: ogni nodo ha sempre R/N bps, anche quando è l'unico. Problema: un nodo per parlare deve semrpe aspettare il suo turno. 

FDM: parliamo tutti con R/N bps. Non ho collisioni (come TDM) ma la mia banda è sempre R/N.

### CDMA
Code division multiple access. Ogni nodo parla con un `code` diverso, una sorta di encoding per il frame. Se si scelgono i code giuti possono tutti parlare insieme e non ho problemi. Viene in particolare usata per il wireless.


## Random Access Protocols

Ognuno parla quando vuole. Ogni nodo parla sempre a R bps. Se ci sono collisioni i nodi ritrasmettono, finchè non ce ne sono (aspettando un random delay, scelto indipendente).


### Slotted ALOHA

* I frame sono sempre di L bits
* Il tempo è diviso in L/R secondi.
* Un nodo parla solo all'inizio di uno slot
* I nodi sono sincronizzati
* Se ci sono collisioni i nodi smettono di trasmettere.
* Il nodo ritrasmette se c'è collisione con probabilità p. (Flippa un coin e vede se può o non può trasmettere).

Slotted Aloha: semplice, full rate, decentralizzata. Ci sono pero' problemi di efficienza. Potrei avere dei momenti in cui tutti stanno zitti e tutti parlano.

### ALOHA

Quando arriva un frame lo trasmetto subito. Se c'è una collisione aspetto e ritrasmetto con probabilità p.

### CSMA 
* Ascolta prima di parlare
* Se qualcuno parla con te smetti di parlare
* Se c'è collisione aspetta a un tempo t casuale (altrimenti se fosse fixed sarebbero stuck in collision).
 
Il tempo di attesa è esponenziale, ogni volta aspetto rand(2^n) * time

## Taking turn protocol

Token passing protocol. Non sono il massimo se perdo il token.

# Ethernet

Data field (46-1500bytes)
Destination (6B)
Source (6B)
Type (2B)
CRC (4B)
Preamble (8B) 10101010 * 7 && 10101011 * 1

# Cables

100Mbit = 100metri se twister pairs
10/1Mbit = 500metri

## Esercizio collisione

Assumiamo che ci siano due host A e B attaccati alle opposte estremità di un segmento ethernet alla distanza di 900 m.
I due host devono inviare l'uno all'altro frame da 1.000 bit ciascuno.
Supponiamo che la velocità del segnale sia di 200 milioni di metri al secondo, che l'ampiezza di banda sia di 10 Mbps e che ci siano quattro ripetitori tra i due host che introducono un ritardo di 25 bit ciascuno sulla trasmissione.
Entrambi gli host iniziano a trasmettere a t=0.
Dopo la collisione A estrae K=0 e B K=1. 
Dopo quanto tempo il frame di B è completamente consegnato ad A, assumendo che B inizi a trasmettere senza problemi subito dopo che ha ricevuto il frame da A?

Dopo un tempo pari a ritarto propagazione + ritardo hub mi accorgo della collisione.
Invio un segnale di JAM da entrambi.

Il tempo di trasmissione è L/R


