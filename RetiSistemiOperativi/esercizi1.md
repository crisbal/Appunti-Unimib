Se la velocità di propagazione del segnale nel mezzo è di 250 milioni di metri al secondo, l'ampiezza di banda del link è di 25 kbps e la dimensione del pacchetto è di 100 bit, calcolare la distanza a cui il ritardo di propagazione è uguale a quello di trasmissione (si trascurino tutte le altre possibili cause di ritardo)

S = 250.000.000 m/s
R = 25kb/s
L = 100b
dist = ?

RitTrasm = L/R = 1/250 = 0.004s

RitProp = 0.004 = d/S -> d = txS = 1.000.000m

Secondo il meccanismo di "store and forward", un messaggio di 7,5 Mbit deve passare per 4 router e 5 link ciascuno con ampiezza di banda di 1,5Mbit/s per andare da host sorgente ad host destinazione. Quanto tempo impiega la trasmissione in assenza di frammentazione del messaggio?

L = 7.500.000b
R=1.5Mbit/s
4 router e 5 link

R = L/T -> T = L/R = 5 

5x5link = 25s

Secondo il meccanismo di "store and forward", un messaggio di 7,5 Mbit deve passare per 4 router e 5 link ciascuno con ampiezza di banda di 1,5Mbit/s per andare da host sorgente ad host destinazione. Quanto tempo impiega approssimativamente (a meno di errore inferiore allo 0,1%) il trasferimento se messaggio è frammentato in 5.000 pacchetti da 1.500 bit l'uno? (considerare solo i tempi di trasmissione)

R=1.5Mbit/s
nPac=5000
LPac=1500b

T1 = L/R = 1/1.000
T5000 = T1xNpac = 5


In una rete con ampiezza di banda R=100 Mbps, circolano pacchetti della dimensione di L=1500 byte. A quale numero minimo di pacchetti per secondo – tra quelli elencati di seguito - il ritardo di coda è senz'altro dominante sui ritardi di elaborazione, propagazione e trasmissione?

Intensità = LxA/R
Se I>1 allora si crea coda

1 = 8x1500xA/100.000.000
1 = 8x15xA/1.000.000
1.000.000 = 8x15xA
1.000.000/8x15 = A = 1.000.000/120 = 8333~

Se la velocità di propagazione del segnale nel mezzo è di 300 milioni di metri al secondo, l'ampiezza di banda del link è di 12 Mbps e la dimensione del pacchetto è di 1.500 byte, calcolare la distanza a cui il ritardo di propagazione è uguale a quello di trasmissione (si trascurino tutte le altre possibili cause di ritardo):

S=300.000.000

TProp=d/S

R=L/TTrasm -> TTrasm = 12000/12000000 => 1/1000 

TProp = 1/1000 = d/300.000.000
d = 300000

Se il ritardo di propagazione di un pacchetto di 1500 byte è di 60 microsecondi, quale deve essere l'ampiezza di banda per avere un ritardo di trasmissione uguale?
1500byte

L=12000
TProp=0.00006
0.00006=12000/R
R=12/0.06 = 200


Se la somma dei ritardi di trasmissione e di propagazione è di 13 microsecondi per un pacchetto di 1500 byte, su un tratto di 900 m, sapendo che il segnale propaga alla velocità di 300.000 km/s, calcolare l'ampiezza di banda del collegamento.

TProp+Ttrasm = 0.000013
L=12000
d=900
S=300.000.000

TProp = 3/1.000.000
TTrasm=0.0001=12000/R -> 120 000 000

Consideriamo il caso di due terminali, uno al CERN di Ginevra e l'altro al Fermilab di Chicago collegati tra loro da un link con ampiezza di banda R=1Gbps. Il tempo di RTT tra di essi vale 30 ms. Supponiamo che i dati siano scambiati in pacchetti della dimensione L=1.000 byte. Quanto deve essere grande la finestra affinché l'utilizzazione del canale sia continua? Il numero di pacchetti minimo (si trascurino i meccanismi TCP di controllo flusso e congestione) è 
R=1.000.000.000
RTT=30ms
L=8000b
U=1
w=?

U=(WxL/R)/(RTT+L/R)

8000/1.000.000.000 = 8/1.000.000 = 0.000008

1=(Wx0.000008)/(0.030008)

w = (RTT+L/R)xUx(R/L) 
(RTT+L/R) = T 
w = Tx1xR/L = TxR/L
R/L(RTT+L/R) = RxRTT/L + 1

10^9x30x10^-3
1000x30 = 125x30 = 3750+1 
-------
8


Scaricate un file di grandi dimensioni via HTTP alla velocità media di T = 50kBps da un sito per cui RTT=90 ms.La dimensione dei singoli pacchetti trasferiti è di L=500 byte. Trascurando gli eventi di timeout si hanno solo ACK ripetuti tre volte per cui si passa con incremento lineare da finestre della dimensione di nL/2 a finestre della dimensione di nL e poi si ripete per l'arrivo di 3 ACK duplicati. Il valore di n , numero di pacchetti massimo nella finestra è quindi:


