\newcommand{\pangle}[1]{\langle #1 \rangle}

# Strutture Relazionali

Definiamo una *struttura relazionale* ($SR$) come una n-upla ($\langle ... \rangle$) in cui il primo elemento è un insieme non vuoto $S$, chiamato dominio o universo di $SR$, e i rimanenti elementi sono relazioni (che possono avere arietà varia) definite su S.

I casi da noi studiati sono solitamente caratterizzati dall'avere un insieme S (richiesto per definizione) ed una sola relazione associata, generalmente binaria.

### Esempio

**Insieme Universo**

$U$ = Insieme $N$ (dei numeri naturali)

**Relazioni**

$R1 = n2=m$ = relazione che associa ad ogni numero il suo quadrato

$R2 = n+m=o$ = relazione che associa a due numeri la loro somma

$SR = \langle U, R1, R2 \rangle$

## Strutture Relazionali Notevoli

### Preordine

Un **preordine** è una struttura relazionale data da una coppia $\langle S,R \rangle$ in cui S è un insieme ed R è una relazione **binaria**, **riflessiva** e **transitiva** su $S$

### Quasi-ordine

Un **quasi-ordine** è una struttura relazionale data da una coppia $\pangle{S,R}$ in cui S è un insieme ed R è una relazione **binaria**, **irriflessiva** e **transitiva** su $S$. 

### Poset

Un **poset** (chiamato anche *ordine parziale* o *semiordinamento*) è una struttura relazionale data da una coppia $\pangle{S,R}$ in cui $S$ è un insieme e $R$ è una relazione **binaria**, **riflessiva**, **antisimmetrica** e **transitiva**.

### Ordinamento

**Particolare semiordinamento** che esiste se e solo se per ogni $x,y \in S$ una ed una sola delle seguenti condizioni è soddisfatta:

* $x = y$
* $\pangle{x,y} \in R$
* $\pangle{y,x} \in R$

Detto semplicemente, in un ordinamento **presi due elementi** dell'insieme di partenza (o insieme universo) **questi sono confrontabili**: posso dire se sono uguali oppure chi è il maggiore e il minore tra i due.

L'ordinamento prende anche il nome di **ordine totale**. 

### Buon Ordinamento

**todo**
 
### Ordini totali vs ordini parziali

Possiamo facilmente distingurere tra un poset (ordine parziale) e un ordinamento (ordine totale) osservando la rappresentazione del grafo associato ad entrambe le strutture. Nel caso di un ordine totale tutti gli elementi della struttura relazionale sono collegati e confrontabili tra loro, cosa che non è vera per gli ordini parziali, in cui alcuni elementi sono completamente isolati dagli altri.


## Reticoli

I **reticoli** sono poset in cui per ogni coppia di $\pangle{x,y} \in S$ esistono un mimino maggiorante e un massimo minorante.

