# Grammatiche regolari

Le grammatiche regolari sono di **tipo 3** sulla gerarchia di Chomsky.

Le grammatiche regolari sono tutte quelle accettabili con un DFA e rappresentabili con un espressione regolare.

## Definizione formale

\begin{definition}
\end{definition}
Chiamiamo grammatica regolare una 4-upla $G=(V,T,P,S)$ dove:

* $V$ è l'insieme delle variabili, esse verrano usate nelle regole di produzione, sono dette anche non-terminali.
* $T$ è l'insieme dei terminali, simboli che formano le stringhe del linguaggio.
* $P$, è l'insieme delle regole di produzione, la rappresentazione ricorsiva della definizione del linguaggio.
* $S$. è il simbolo di partenza, una delle variabili di $V$.

Imponiamo su $P$ dei vincoli:

* $\epsilon$ può solo comparire in $S \to \epsilon$
* Le produzioni sono tutte lineari a sinistra o a destra


## Lineare a destra o sinistra

\begin{definition}
Una produzione è lineare a destra se è nel formato:

* $A \to aB$

oppure

* $A \to c$.

Le variabili, se ci sono, stanno sempre a destra di tutti i terminali.
\end{definition}

\begin{definition}
Una produzione è lineare a sinistra se è nel formato:

* $A \to Ba$

oppure

* $A \to c$.

Le variabili, se ci sono, stanno sempre a sinistra di tutti i terminali.
\end{definition}

Non sempre è possibile convertire da lineare a destra a lineare a sinistra, o viceversa.

## Espressioni regolari

Definiamo induttivamente un'espressione regolare

\begin{definition}
\end{definition}

Base:

* $\epsilon$ e $\emptyset$ sono espressioni regolari
* Se $a$ è un simbolo, allora $a$ è un espressione regolare. $L(a)=\{a\}$
* Una variabile è una variabile e rappresenta un linguaggio.

Induzione:

* Se $E$ ed $F$ sono E.R. allora $E+F$ (unione) è espressione regolare. $$L(E+F) = L(E) \cup L(F)$$.
* Se $E$ ed $F$ sono E.R. allora $EF$ (concatenazione) è espressione regolare. $$L(EF) = L(E)L(F)$$.
* Se $E$ è E.R. allora $E^*$ è espressione regolare. $$L(E) = (L(E))^*$$
* SE $E$ è E.R. allora $(E)$ è espressione regolare. $$L((E)) = L(E)$$


## Pumping Lemma per linguaggi regolari

Supponiamo $L$ un linguaggio regolare. Esiste quindi una costante $n$ tale che se $w$ è una stringa di $L$ allora $|w| \geq n$. Possiamo quindi scrivere $w = xyz$ tale che:

* $y \neq \epsilon$
* $|xy| \leq n$
* Per ogni $k \geq 0$, $xy^kz$ è in L

