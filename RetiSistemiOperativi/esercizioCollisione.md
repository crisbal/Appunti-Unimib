Assumiamo che ci siano due host A e B attaccati alle opposte estremità di un segmento ethernet alla distanza di 900 m.

I due host devono inviare l'uno all'altro frame da 1.000 bit ciascuno.

Supponiamo che la velocità del segnale sia di 200 milioni di metri al secondo, che l'ampiezza di banda sia di 10 Mbps e che ci siano quattro ripetitori tra i due host che introducono un ritardo di 25 bit ciascuno sulla trasmissione.

Entrambi gli host iniziano a trasmettere a t=0.

Dopo la collisione A estrae K=0 e B K=1.

Dopo quanto tempo il frame di B è completamente consegnato ad A, assumendo che B inizi a trasmettere senza problemi subito dopo che ha ricevuto il frame da A?


25bit = 25/10000000 = 0.0000025 = 2.5microsec

Dopo Rprop + 2.5ms * 4 rilevo la collisione -> 14.5microsec = 145bit

JAM = 48bit = 4.8microsec = 48bit

RProp = D/V= 4.5/1000000 =

Ttrams = 1/10000 = 1000bit

0 = inizio trasmissione
145bit = primo bit contemporaneo, entrambi smettono di trasmettere
145+145 = arriva la coda di bit
290+48 = fine segnale di jam

338+96 = A inzia a trasmettere
434+145 = Arriva a B il primo bit del messaggio
579+1000 = arriva a B l'ultimo bit del messaggio

1579+96 = B inzia a trasmettere
^ + 145 = arriva il primo bit ad A
^ + 1000 = Arriva l'ultimo bit ad A
