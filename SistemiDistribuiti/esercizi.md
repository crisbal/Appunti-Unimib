In un sistema N=3 attori togliono sequenze d max messaggi ad un unico ricevente. La comunicazione viene inviata da un dispather che funziona con il metodo store and forward: il dispatcher riceve il messaggio, lo mette in coda e lo inoltra al destinatario quando diventa primo in coda. Tradurre il modello in java concorrente. 

Il dispatcher è la risorsa condivisa.
Il thread mittente invia Max massaggi al dispatcher eventualmente facendo le sleep tra un messaggio e l'altro
Il ricevente non è per forza un thread