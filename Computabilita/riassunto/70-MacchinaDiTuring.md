# Macchine di Turing

## Problemi indecidibili

Ogni problema (e quindi ogni linguaggio associato al problema) può essere rappresentato in binario, usando soltanto le cifre 0 ed 1.

* I linguaggi sono tutti i possibili sottoinsiemi dell'insieme infinito $\{ w | w = (0+1)* \}$ (quindi l'insieme potenza)
* La macchine di Turing sono $N$ (numerabili ma infinite)
* $|MdT| = \mathbb{N}$ e $|Linguaggi|=2^\mathbb{N}$
* $N<2^N$

Quindi ci sono sicuramente problemi/linguaggi che non possono essere associati ad alcuna macchina di Turing, od ad alcun algoritmo.

### Esempi di problemi indecidibili

#### Ambiguità di una grammatica

Non esiste una macchina di Turing (e quindi un algoritmo) che ci dice se una grammatica è ambigua

#### "Ciao mondo"

Non esiste algoritmo che dice se un programma stampa "Ciao mondo" come primo output.

Dimostriamo per assurdo che non esiste.

+ Supponiamo di avere un programma $H$ che prende in input un programma $P$ ed un input $I$ e ci dice, tramite "yes" or "no", se il programma $P$, con input $I$ stampa "Ciao mondo".
+ Costruiamo $H_1$, basato su $H$, che stampa $Ciao mondo" al posto di stampare "no". $H_2$ stampa quindi "Ciao mondo" se $P$ con input $I$ non stampa "Ciao mondo"
+ Costruiamo $H_2$, basato su $H_1$, che prende come input solo $P$ e si chiede cosa faccia $P$ dato in input se stesso. $H_2$ stampa "si" se $P$ stampa "Ciao mondo", oppure stampa "Ciao mondo" se $P$ non stampa "Ciao mondo".
+ Costruiamo $H_p$, basato su $H_2$, che prende come input il codice di se stesso. Questo programma non può esistere: se $H_p$ (in input) stampasse "Ciao mondo", $H_p$ dovrebbe stampare "yes" (che è assurdo visto che abbiamo detto che stampa "Ciao mondo"), mentre se $H_p$ (in input) stampasse "yes", $H_P$ dovrebbe stampare "Ciao mondo" (perchè $H_p$ in input non ha stampato "Ciao mondo", che è assurdo).

Il **problema "Ciao mondo" è indecidibile**.

## Macchina di Turing

Una macchina di Touring è formata da:

* un controllo finito, che può trovarsi in uno tra un insieme di stati possibili.
* un nastro, diviso in celle che possono contenere simboli, di lunghezza infinita
* un input, cioè una stringa di lunghezza finita di simboli scelti da un alfabeto di input, piazzato sul nastro
* una testina, un elemento che punta sempre ad una sola cella del nastro, serve a leggere/scrivere la cella.

La macchina di Touring può effettuare una mossa, una funzione dipendente dallo stato del controllo finito e dal simbolo letto dalla testina. In una mossa la macchina di Touring:

* Cambierà stato (e il nuovo stato potrebbe essere quello in cui già si trovava)
* Scriverà sulla cella corrente un nuovo simbolo
* Sposterà la testina di una posizione a sinistra o a destra (in alcune versioni potrebbe anche rimanere ferma, senza limitazioni).

$$M = (Q, \Sigma, \Gamma, \delta, q_0, B, F)$$

* $Q$: insieme degli stati del controllo finito
* $\Sigma$: insieme dei simboli di input
* $\Gamma$: insieme dei simboli del nastro; $\Sigma$ è sottoinsieme di $\Gamma$
* $\delta$: la funzione di transizione (q, X) -> (p, Y, Dir)
* $q_0$: stato iniziale
* $B$: simbolo di blank
* $F$: insieme degli stati finali

Una macchina di Turing accetta una classe di linguaggi detti **ricorsivamente enumerabili**.

## Estensioni delle MdT

E' possibile estendere le caratteristiche di una MdT.

### MdT multinastro

Al posto che avere un solo nastro hanno più nastri dai quali possono leggere/scrivere contemporaneamente per capire l'azione da intraprendere.

Inizialmente tutti i nastri (diversi da quello principale che contiene l'input) sono vuoti (hanno quindi solo caratteri di blank).

Usare una MdT multinastro non allarga la classe di linguaggi accettabili dalle MdT. Infatti ogni MdT multinastro ha un equivalente MdT mononastro.

### MdT non deterministiche

La funzione $\delta$ della macchina di Turing non ritorna una sola tripla ma un insieme di triple. Vengono quindi lanciate computazioni parallele.

Una MdT non deterministica ha un equivalente MdT deterministica (implementata per semplicità con una MdT multinastro).

## Restrizioni sulle MdT

### MdT con nastro semi-infinito

In questa MdT il nastro non è di lunghezza infinita da entrambe le parti ma è di lunghezza infinita solo verso destra.

Il trucco di questa MdT sta nello scrivere, nella stessa cella due tracce di dati diverse. Una per la cella $X_n$ e una per la cella $X_{-n}$. In questo modo è possibile limitare lo spostamento a sinistra.

Viene inoltre applicata un' altra limitazione: non è mai possibile scrivere un *blank* sul nastro.

Una MdT semi-infinita accetta la stessa classe di linguaggi di una MdT infinita.

### PDA Multistack

Un PDA multistack (cioè un PDA che ha più stack su cui fa push/pop in ogni transizione) permette di simulare una macchina di Turing: infatti un linguaggio accettatto da una MdT è anche accettato da una PDA a due stack.

In uno stack viene messo quello che è a sinistra della testina, in un altro quello che è a destra.

* In input al PDA passo $wZ$, gli stack sono vuoti
* $wZ$ viene copiato nel primo stack, smettendo di copiare quando c'è $Z$.
* Viene pushato tutto dal primo al secondo stato, in questo modo avrò la prima lettera di $w$ in cima al secondo stato.
* Il PDA inizia a simulare: la "testina" legge il simbolo in cima al secondo stack e agisce in base a quello. Se si sposta a DX lo sposterà sul primo stack, se si sposta a sx, lo riscriverà sul secondo, insieme ad un simbolo di Blank. E così prosegue l'esecuzione.

 