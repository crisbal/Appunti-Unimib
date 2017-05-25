# Automi a stati finiti non-deterministici

Un NFA è un automa a stati finiti non deterministico. Un NFA ha la caratteristicha che in un determinato istante della sua computazione può trovarsi in più di uno stato. Questa sua abilità è generalmente espressa con l'abilità dell'automa di provare ad "indovinare" qualcosa del suo input.

Un NFA è praticamente uguale ad un DFA, l'unica differenza sta nella funzione $\delta$ che non ritorna più un solo stato ma un insieme di stati.

## $\delta^*$

Anche in questo caso la $\delta^*$ è definita per induzione.

\begin{definition}

\begin{itemize}
\item Caso base: $\delta^*(q,\lambda)=\{q\}$
\item Passo induttivo: $w=xa$, $\delta^*(q,x) = \{p_1, p_2, \ldots, p_n\}$ e $$\bigcup \delta(p_i,a) = \{r_1, r_2, \ldots, r_m\}$$ quindi $\delta^*(q,x) = \{r_1, r_2, \ldots, r_m\}$
\end{itemize}
\end{definition}

## Equivalenza tra DFA e NFA

Ogni linguaggio accettabile con una NFA è anche accettabile con un DFA. Un NFA è semplicemente una rappresentazione diversa per un DFA, fatta ad esempio per semplificare o rendere più chiaro il funzionamento.

\begin{theorem}
Un linguaggio L accettato da un DFA se e solo se L è accettato anche da un NFA.
\end{theorem}

E' possibile convertire un NFA in un DFA.


## $\epsilon$-NFA

Un $\epsilon$-NFA è un NFA che permette di fare transizioni che non consumano input, cioè delle $\epsilon$-transizioni. Questo vuol dire che l'automa può fare transizioni da solo, senza ricevere un input. Come per gli NFA, questa funzionalità non aumenta la classe di linguaggi riconoscibili tramite automi a stati finiti, rimane la stessa dei DFA.

### $\delta$ di un $\epsilon$-NFA

La funzione di transizione di un $\epsilon$-NFA prende in input uno stato e un elemento di $\Sigma \cup \{\epsilon\}$ e ritorna un insieme di stati.

### $\epsilon$-chiusura

Importantissimo per i eNFA è il concetto di ECLOSE di uno stato, è l'insieme di tutti gli stati raggiungibili con e-transizioni senza consumare input. E' definita per induzione.

\begin{definition}
\end{definition}

* Caso base: $q$ è nell'ECLOSE($q$).
* Passo induttivo: Se $p$ è nell'ECLOSE($q$) e c'è una $\epsilon$-transizione dallo stato $p$ allo stato $r$, quindi $r$ è nell'ECLOSE($q$).



