# Automi a pila

## Definizione informale

Gli automi a pila sono automi a stati finiti che possono interagire con uno stack mentre eseguono.

Lo stack svolge una funzione di memoria elementare da cui, in ogni mossa, si legge un simbolo (che viene usato insieme al simbolo di input nella $\delta$) e sul quale viene scritto uno o più simboli in contemporanea al cambiamento di stato risultante dalla $\delta$.

Un PDA riconosce tutti i linguaggi context-free.

## Definizione formale

Un automa a pila $P$ è una n-upla così composta:

* $Q$, un insieme finito di stati
* $\Sigma$, un insieme finito di simboli di input
* $\Gamma$, un insieme di **simboli di stack**, sono i simboli che possiamo pushare sullo stack.
* $\delta$, la funzione di transizione. Prende come argomento tre parametri, lo stato corrente, il simbolo di input (oppure $\epsilon$) e il *top()* dello stack. Ritorna un insieme di coppie $(p, \gamma)$ dove $p$ è il nuovo stato e $\gamma$ è il simbolo o i simboli da pushare sullo stack.
* $q_0$, lo stato di inizio
* $Z_0$, il simbolo posto inizialmente sullo stack
* $F$, l'insieme degli stati di accettazione

## Descrizioni istantanee

$$(q, aw, XB) \to (p,w,AB)$$

\begin{definition}

$\to^*$ è definita per induzione:
\begin{itemize}
\item $I \to^* I$ per ogni descrizione istantanea
\item $I \to^* J$ se esiste $K$, $I \to K$ e $K \to^* J$.
\end{itemize}
\end{definition}

### Inoltre

* Se una sequenza di ID è valida per un PDA, anche la computazione formata aggiungendo alla stringa di input di ogni ID un'altra stringa è valida
* Se una computazione è valida, aggiungendo in fondo allo stack di ogni ID dei simboli otteniamo una computazione valida
* Se una computazione è valida, e una finale dell'input non è consumata, rimuovendo questa parte da tutti gli input di ogni ID otteniamo una computazione valida

## Accettazione

Un PDA può accettare sia per stato finale che per stack vuoto.

Un linguaggio ha un PDA che accetta per stato finale se e solo se ha un PDA che lo accetta per stack vuoto.

Generalmente un PDA che accetta per stato finale è diverso da uno che accetta per stack vuoto.

E' possibile convertire un NPDA (che accetta per stack vuoto, N di null) in un LPDA (che accetta per stato finale, L di last), e viceversa.

### Per stato finale

$$L(P) = \{w | (q_0,w,Z_0) \to^* (q,\epsilon,A) \}$$ con q appratenente all'insieme degli stati finaleìi del PDA.

#### Convesione in stack vuoto

Per prima cosa si pusha un simbolo $X_0$ sullo stack. Si crea uno stato aggiuntivo che svuota lo stack e a questo stato si collegano tutti gli stati finali con una e-transizione.

## Per stack vuoto

$$N(P) = \{w | (q_0,w,Z_0) \to^* (q, \epsilon, \epsilon)\}$$ per un qualsiasi stato $q$.

#### Conversione in stato finale

Per prima cosa si aggiunge un simbolo $X_0$ in fondo allo stack. In seguito si aggiunge uno stato finale al quale si può accedere da ogni stato dell'automa con una transizione $\epsilon,X_0/\epsilon$


## PDA deterministici

I PDA possono essere deterministici o non deterministici.
Intuitivamente un PDA è deterministico quando non c'è possibilità di scegliere quale mossa svolgere in ogni determinata situazione.

In particolare se $\delta(q,a,X)$ produce come risultato più coppie $(s, \gamma)$ allora l'automa è ovviamente non deterministico. Inoltre è non deterministico se mentre esiste un $\delta(q,a,X)$ esiste anche un $\delta(q,\epsilon,X)$.

### Linguaggi del DPDA

Un DPDA accetta una classe di linguaggi che è tra i linguaggi regolari e i linguaggi CF.

Inanzitutto un DPDA riconosce per stato finale tutti i linguaggi regolari. Questo è semplice da capire perchè alla fine basta che il DPDA simula un automa a stati finiti deterministico, e quindi non fa nulla sullo stack.

Il DPDA può accettare per stack vuoto se e solo se il linguaggio che si sta cercando di accettare gode della proprietà del prefisso.

Se un linguaggio è accettato per stack vuoto da un DPDA allora L è generato da una grammatica context-free non ambigua.

