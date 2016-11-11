# Dimensione finestra

RTT = TProp * 2 = SEND+ACK

W >= RTT/(L/R) + 1
Nel tempo del RTT quanti pacchetti (L/R) posso inviare?
Il più 1 è per approssimare per eccesso e farci stare un pacchettoin più

Utilizzo = N * L/R = numero che se è 1 è al massimo
           -------
           RTT+L/R

Latenza = Connessione + Invio + RTT = RTT + L/R + RTT 


