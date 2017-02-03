# Grammatiche Context Free

## Introduzione

Le grammatiche context-free hanno alla base della proprio struttura il concetto della ricorsione. Per introdurre queste grammatiche possiamo partire da un esempio pratico. 

\begin{example}
Consideriamo il linguaggio delle stringhe palindrome, generate a partire dall'alfabeto $\Sigma={0,1}$. Come possiamo definirlo formalmente? Cioè quale criterio ci permette di dire se una stringa $w$ è palindroma o no? In questo caso la definizione che torna più comoda è quella ricorsiva.

* Se $w$ è $\epsilon$ oppure $0$ oppure $1$ allora è palindroma.
* $0w0$, $1w1$ è palindroma se e solo se $w$ è palindroma.

Se volessimo quindi rappresentare tutte le stringhe palindrome in ${0,1}^*$ potremmo scrivere le seguenti regole, che chiamiamo produzioni:
* $P \to \epsilon$
* $P \to 0$
* $P \to 1$
* $P \to 0P0$
* $P \to 1p1$
\end{example}

Una grammatica context free è una notazione formale per esprimere questi linguaggi ricorsivi.

## Definizione formale

\begin{definition}
Chiamiamo grammatica context-free una n-upla $G=(V,T,P,S)$ dove:

* $V$ è l'insieme delle variabili, esse verrano usate nelle regole di produzione, sono dette anche non-terminali.
* $T$ è l'insieme dei terminali, simboli che formano le stringhe del linguaggio.
* $P$, è l'insieme delle regole di produzione, la rappresentazione ricorsiva della definizione del linguaggio.
* $S$. è il simbolo di partenza, una delle variabili di $V$.

\end{definition}


## Esempi

\begin{example}
Prendiamo ancora il caso del linguaggio delle stringhe palindrome.

* $V\_{ariabili} = {V}$
* $T\_{erminali} = {0,1}$
* $P\_{roduzioni} = {\ldots}$
* $S\_{tart} = P$

$$G = ({V}, {0, 1}, P, V)$$
$$P = {P \to \lambda, P \to 0, P \to 1, P \to 0P0, P \to 1P1}$$
\end{example}

\begin{definition}
In $P \to 101$ $P$ è detta testa della produzione mentre $101$ è il corpo della produzione.
\end{definition}

## Derivazioni

E' possibile applicare le regole di produzione di una grammatica per capire se una certa stringa appartiene ad un determinato linguaggio. Possiamo approcciare il problema in due modalità, differenti nell'esecuzione ma equivalenti nel risultato. 

Il primo metodo di definizione del linguaggio, chiamato **inferenza ricorsiva** agisce *body to head*. Prendiamo le stringhe appartenenti al linguaggio di ogni variabile e le concateniamo, in ordine corretto, con ogni terminale che appare nella stringa del corpo e concludiamo che la stringa risultante appartiene al linguaggio della variabile di testa.

L'altro metodo di definizione del linguaggiom detto di **derivazione** agice **head to body**. Per prima cosa la variabile di partenza viene espansa in una delle sue produzioni, in seguito si prosegue ad espandere in modo ricorsivo ogni variabile del corpo ottenuto, finchè non si raggiunge una sola stringa di terminali. 


