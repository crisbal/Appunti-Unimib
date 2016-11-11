# Introduzione

Le grammatiche context-free hanno alla base della proprio struttura il concetto della ricorsione. Per introdurre queste grammatiche possiamo partire da un esempio pratico. 

\begin{example}
Consideriamo il linguaggio delle stringhe palindrome, generate a partire dall'alfabeto $\Sigma={0,1}$. Come possiamo definirlo formalmente? Cioè quale criterio ci permette di dire se una stringa $w$ è palindroma o no? In questo caso la definizione che torna più comoda è quella ricorsiva.

* Se $w$ è $\epsilon$ oppure $0$ oppure $1$ allora è palindroma.
* $0w0$, $1w1$ è palindroma se e solo se $w$ è palindroma.

Se volessimo quindi rappresentare tutte le stringhe palindrome in ${0,1}^{\*}$ potremmo scrivere le seguenti regole, che chiamiamo produzioni:
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

\begin{example}

## Esempi

\begin{example}
Prendiamo ancora il caso del linguaggio delle stringhe palindrome.

* $V\_{ar} = {P}$
* $T\_{erm} = {0,1}$
* $P\_{rod} = {}$
* $S\_{tart} = P$

$$G=({P},{0,1},Prod,P)$$
\end{example}

