# Indecidibilità

## Problemi

* Decidibili: la macchina di Turing si ferma e mi dice se accetta o no.Questi linguaggi sono ricorsivi. Esiste quindi un algoritmo.
* Semi-decidibli: la macchian di Turing si ferma se accetta ma non è detto che si fermi in caso di non accettazione
* Indecidibili: la macchina di Turing non può rispondere.

## Ricorsivamente Enumerabile

Un linguaggio è ricorsivamente enumerabile se $L=L(M)$ per una qualche macchina di Turing M, cioè se L è accettato da qualche macchina di Turing.

## MdT come stringhe binarie

Ogni stringa binaria può essere vista come una macchina di Turing, se la stringa non è ben formata allora è una macchina di Turing che non fa nula.

### Corrispondenza tra stringa binaria e numero

Se $w$ è una stringa binaria allora $1w$ è un intero.

Ad esempio $1w$ è la $1w_{10}-esima$ stringa.

#### Esempi

* $e \to 1_b-esima$
* $0 \to 10_b-esima$
* $1 \to 11_b-esima$

Addirittura, con questo criterio, le stringhe sono ordinate prima per lunghezza e poi per ordine lessicografico.

### Codici per le TM

Visto che possiamo (per ora supponiamo) rappresentare una TM come un numero binario e possiamo associare a questo numero binario un numero naturale, possiamo parlare di MdT $1i_{bin}esima$ quando stiamo parlando della macchina di Turing rappresentata dalla stringa binaria $i$.

Supponiamo la regola di transizione:

$$\delta(q_i,X_j) = (q_k, X_l, D_m)$$

Codifichiamo questa regola con la stringa binaria: 0^i 1 0^j 1 0^k 1 0^l 1 0^m
Non ci possono essere occorrenze di due o più 1 consecutivi.

Il codice per l'intera Turing machine è fatto in questo modo:

$$C_1 11 C_2 11 ... C_{n-1} 11 C_n$$

Per la stessa MdT possono esistere più codici, in quanto l'ordine delle transizioni può essere scambiato a piacimento.

Una coppia $(TM,w)$ può essere rappresentata come $TM 111 w$

## Linguaggio diagonale

E' fatto da tutte le stringhe $w_i$ tali che la MdT rappresentata da $w_i$ non accetta in input $w_i$ stesso.
$$\{w_i | w_1 \not \in L(M_i)\}$$

### Perchè si chiama diagonale?

Mettiamo in una tabella $j$ sulle colonne e $i$ sulle righe. Mettiamo 1 se la macchina di Turing $M_i$ accetta la stringa $w_j$.

La riga i-esima diventa quindi il vettore caratteristico della MdT $M_i$, ci indica tutte le stringhe membro di $L(M_i)$.

La riga diagonale ci dice se $M_i$ accetta $w_i$. Per costruire $L_d$, dobbiamo quindi fare il complemento della diagonale.

Il problema pero' è che questo linguaggio non può stare in alcuna riga, il complemento della diagonale infatti è anch'esso un vettore caratteristico ed è per forza diverso per una colonna rispetto ad ogni riga della tabella.

Non esiste quindi macchina di Turing che accetta $L_d$ (più forte del dire che tale linguaggio è indecidibile).

### Ld non è ricorsivamente enumerabile

Teorema: $L_d$ non è un RE. Non esiste macchina di Turing che accetta $L_d$.

Supponiamo che $L_d$ sia $L(M)$ di una MdT $M$. $M$ sarebbe nella lista di macchine di Turing costruite sopra. Quindi per qualche $i$ avremmo che $M = Mi$.

Chiediamoci se $w_i$ sta in $L_d$.

* Se $w_i$ sta in $L_d$ quindi $M_i$ accetta $w_i$. Ma per definizione di Ld, $w_i$ non è in Ld, perchè $L_d$ contiene i $w_j$ che non sono accettati da $M_j$.
* Se $w_i$ non sta in Ld, $M_i$ non accetta $w_i$, Quindi per definizione di $L_d$, $w_i$ si trova in $L_d$.

E' un assurdo!

## Linguaggi ricorsivi

Chiamiamo L un linguaggio ricorsivo se $L = L(M)$ per qualche macchina di Turing M tale che:

* Se $w$ sta in $L$, quindi $M$ accetta
* Se $w$ non sta in $L$, quindi $M$ si ferma, prima o poi.

$$\text{Ricorsivi} \subset \text{RE} \subset \text{Non-RE}$$

## Complementi di linguaggi

Se $L$ è ricorsivo anche $\not L$ è ricorsivo.

Se $L$ e il suo complemento sono $RE$, $L$ è ricorsio (e quindi anche $\not L$)

## Linguaggio universale

%L_u$ è il linguaggio universale. L'insieme delle stringhe binarie che rappresentano una coppia $(M,w)$ dove $M$ è una $TM$ e $w$ una stringa di $(0+1)*$ in modo tale che $w$ sta in $L(M)$.

$L_u$ è l'insieme delle stringhe rappresentati una $TM$ e un input accettato dalla $TM$.

C'è annche una TMU, la macchina di Turing universale tale che $L_u = L(TMU)$.

Per descrivere $TMU$ si puo' usare una macchina multinastro a 4 nastri.

+ Nel primo nastro si tengono le transizioni di $M$, seguite dalla stringa $w$ nel formato $M111w$.
+ Il secondo nastro viene usato per tenere il nastro simulato di $M$, usando lo stesso formato di $M$: $X_i$ viene rappresentato come $0^i$ e i vari $X$ sono separati da un $1$.
+ Il terzo nastro sarà usato per tenere lo stato di $M$, con q_i rappresentato da $0^i$
+ Il quarto nastro viene usato per calcoli.

### Indecidibilità di $L_u$

\begin{theorem}
Lu è RE ma non ricorsivo.
\end{theorem}

E' facile vedere che $L_u$ è RE: visto che la $MTU$ deve simulare una MdT, la simulazione potrebbe non fermarsi mai, perchè la MdT che viene simulata non termina la sua esecuzione.

Più complesso è dire invece che RE è non ricorsivo.

Si suppone, per assurdo, che $L_u$ sia ricorsivo. Quindi $\not L_u$, il suo complemento, è ricorsivo (per un teorema enunciato precedentemente). Ma, se avessimo una MdT che potesse accettare $\not L_u$ ne potremmo costruire una che acceta $L_d$. Ma visto che sappiamo che $L_d$ è non $RE$, abbiamo una contraddizione, $L_u$ non può essere ricorsivo.

Seguendo l'assurdo, come si può fare una MdT che accetta $L_d$?

Supponiamo l'esistenza di una MdT $M$ che accetta $\not L_u$. Modifichiamo $M$ in modo da accettare $L_d$, e costruiamo quindi $M'$.

+ Dato in input $w$, $M'$ lo cambia in $w111w$
+ $M'$ simula $M$ sul nuovo input. Se $w$ è $w_i$, $M'$ determina se $M_i$ accetta $w_i$. Quindi $M$ accetta $\not L_u$ se e solo se $M_i$ non accetta $w_i$, cioè se $w_i$ non è in $L_d$.
+ Quindi $M'$ accetta $w$ se e solo se $w$ è in $L_d$. Visto che sappiamo che $M'$ non può esistere, allora $L_u$ è non ricorsivo.

## Riduzione

Il concetto di riduzione: se abbiamo un algoritmo che converte istanze di un problema P1 in istanze di P2 che hanno la stessa risposta, diciamo che P1 riduce a P2.

P2 è quindi difficile tanto quanto P1. Quindi se P1 non è ricorsivo, neanche P2 può esserlo. Se p1 è non RE, p2 non può essere RE.

## Esempio

Prendiamo due linguaggi: Le e Lne. Se w è una stringa binaria quindi rappresenta una macchina di Turing Mi. Se il linguaggio L(Mi)=0 w sta in Le.
Le è il linguaggio di tutte le TM che non accettano input. Lne è il complemento.

Lne è il linguaggio "più semplice". E' RE ma non ricorsivo. Le non è RE.

Lne è RE
Lne è non ricorsivo.
Le è non RE

## Proprietà

Una proprieàt di un linguaggio RE è un insieme di linguaggi RE. La proprietà di essere CF è l'insieme di tutti i linguaggi CF.

Banale: vuota o tutti i linguaggi RE.

Teorema di rice: Ogni proprietà non banale del linguaggio RE è indecidibile.

