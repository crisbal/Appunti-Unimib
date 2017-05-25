# Argomenti introduttivi

## Alfabeto

\begin{definition}
Un alfabeto è un insieme finito e non vuoto di simboli.
\end{definition}

Generalmente indichiamo gli alfabeti con la lettera greca $\Sigma$ (*sigma* maiuscola).

### Esempi di alfabeti

* $\Sigma = \{0,1\}$, l'alfabeto binario.
* $\Sigma = \{a,b,\ldots,z\}$, l'alfabeto di tutte le lettere dell'alfabeto.
* $\Sigma = \{0,1,\ldots,9\}$, l'alfabeto delle cifre da 0 a 9.

## Stringa

\begin{definition}
Una stringa è una sequenza finita di simboli scelti da un alfabeto.
\end{definition}

### Esempi di stringhe

* Dato l'alfabeto $\Sigma = \{0,1,\ldots,9\}$, $1492$, $0$, $777$ sono solo alcune delle infinite stringhe estraibili dall'alfabeto.

### Lunghezza di una stringa

Una metodologia di classificazione delle stringhe è quella che usa come parametro di confronto la lunghezza di queste.

\begin{definition}
La lunghezza di una stringa è il numero di simboli che compongono la stringa.
\end{definition}

Generalmente si indica la lunghezza di una stringa $w$ con $|w|$.
\begin{example}
\end{example}

* $|101|$ = 3
* $|ciao|$ = 4
* $|00|$ = 2

### La stringa vuota

Una stringa particolare, estraibile sempre da ogni alfabeto, è la stringa vuota. Essa ha lunghezza zero. E' indicata generalmente dalla lettera greca $\epsilon$ (*epsilon*) o dalla lettera greca $\lambda$ (*lamda*). In questo testo sarà usata una o l'altra notazione, senza particolari preferenze.

\begin{remark}

$$|\lambda|=0$$

\end{remark}

### Concatenazione tra stringhe

Prese due stringhe $s_1$ e $s_2$ denotiamo con $s_1s_2$ la nuova stringa risultante dalla concatenazione di $s_1$ con $s_2$, cioò la stringa ottenuta appendendo in fondo a $s_1$ la stringa $s_2$.

\begin{example}

Data $s_1=ci$ e $s_2=ao$, $s_1s_2=ciao$

\end{example}

\begin{remark}

$$|s_1s_2|=|s_2s_1|$$

\end{remark}
 
### Potenze di un alfabeto

\begin{definition}

Dato un alfabeto $\Sigma$ e un numero $n$, definiamo come $\Sigma^n$ l'insieme delle stringhe estratte da $\Sigma$ di lunghezza $n$.

\end{definition}

\begin{example}

\begin{itemize}
\item $\Sigma^0 = \{\epsilon\}$
\item $\Sigma = \{a,b\}, n=2 \rightarrow \Sigma^n = \{aa,ab,ba,bb\}$
\end{itemize}

\end{example}

\begin{remark}

$\Sigma^{\*}$ è l'insieme di tutte le stringhe ottenute da un alfabeto. E' ovviamente un insieme infito, ottenuto dall'unione di tutti gli $\Sigma^n$ con $n$ che varia tra $0$ e $\infty$.

\end{remark}

## Linguaggio

\begin{definition}
Un insieme di stringhe $L$ preso da un insieme $\Sigma^{\*}$ è definito un linguaggio.
\end{definition}

Generalmente le stringhe che appartengono ad $L$ sono scelte secondo un criterio di appartenenza, o comunque non in maniera casuale.

### Esempi di linguaggi

\begin{example}
Dato $\Sigma=\{0,1\}$ costruiamo il linguaggio tale per cui le stringhe sono composte da un numero uguale di 0 seguito da un numero uguale di 1. Le stringhe possono avere lunghezza uguale a 0.

Inanzitutto scriviamo in maniera simbolica il linguaggio che vogliamo costruire.
$$L=\{w \in \Sigma^{\*} | w=0^n1^n, n \geq 0\}$$

Ci accorgiamo inanzitutto che questo linguaggio è infinito, ci sono vincoli sulla lunghezza minima (se così vogliamo chiamarli, visto che la lunghezza minima è 0) ma non ce ne sono sulla lunghezza massima.

Possiamo quindi scrivere il nostro linguaggio in questo modo
$$L=\{\epsilon, 01, 0011, 000111, \ldots\}$$
\end{example}

\begin{example}
Dato $\Sigma=\{a,b\}$ costruiamo il linguaggio delle stringhe palindrome in $\Sigma^{\*}$ con lunghezza maggiore di zero.

In simboli:
$$L=\{w \in \Sigma^{\*} | \text{ w è palindroma}, |w|>0\}$$

Anche questo linguaggui è infinito.

$$L=\{a, b, ab, ba, aa, bb, aaa, aba, bbb, bab, ldots\}$$
\end{example}

## Problema

\begin{definition}

Dato un linguaggio $L$ ed una stringa $w$ definiamo come problema la questione che porta a dire se $w$ appartiene o no ad $L$.

\end{definition}

Dare una risposta ad un problema può essere un'operazione banale ma anche difficilissima.

\begin{example}[Problema banale]
Dire se la stringa 'abba' appartiene al linguaggio delle stringhe palindrome ottenute da $\Sigma=\{a,b\}$.

Basta un semplice algoritmo e anche il computer meno performante riesce a dare una risposta.
\end{example}

\begin{example}[Problema non così banale]
Dire se il numero 2038074743 appartiene al linguaggio costruito da $\Sigma=\{0,\ldots,9\}$ tale per cui il numero rappresentato da $w \in L$ è primo.
\end{example}

## Gerarchia di Chomsky

Anche se la definizione di linguaggio è abbastanza generica, esistono diverse categorie di linguaggi.

* Regolari, associati alla grammatiche di tipo 3, riconoscibili con gli automi a stati finiti.
* Context-free, di tipo 2, riconoscibili con gli automi a pila non deterministici.
* Context-sensitive, di tipo 1, riconoscibili con le macchine di Turing non deterministiche a nastro limitato.
* Ricorsivamente enumerabili, di tipo 0, riconoscibili con le macchine di Turing

