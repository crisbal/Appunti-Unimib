# 

## Dimostrazione
Serie di ragionamenti logici che portano da un ipotesi, rappresentata da uno o più fatti, ad una tesi.

## Inferenza
Procedimento logico e veritiero che a partire da delle premesse porta a delle conclusioni, da una proposizione logica all'altra.

## Regola di inferenza
Schema formale e sintattico che si applica nell'eseguire un'inferenza. Regola che permette di passare da un numero finito di proposizioni dette premesse ad una proposizione detta conclusione.

### Esempio
Modus Ponens, Modus Tollens, Principio di Risoluzione, Terzo Escluso

#### Logica primo ordine
\forallx T(x), c \in C -> T(c)
T(c), c \in C -> \exists x T(x)

### Principio di risoluzione
Regola di inferenza generalizzata, usata generalmente nelle dimostrazioni per assurdo. Lavora su formule tra loro congiunte (in AND) dette clausole.

(P v -R, S v R) -> P v S
-P, Q1 v Q2 v Q3 v P -> Q2 v Q2 v Q3

## Forma normale a clausole
Congiunta: congiunzione di disgiunzioni AND(OR Li)
Dishiunta: disgiunzione di congiunzioni OR(AND Li)

## Termini
* Atomi (Numero, Stringa, Sequenza caratteri alfanumerici con \_)
* Variabili (Inizia con carattere maiuscolo o \_)
    * Variabile anonima: _
* Funtori (simbolo di funzione o di predicato, cioè un atomo, seguito da una sequenza di termini racchiusi tra parentesi tonde e separati da virgole).

## Regola
Quando si vuole esprimere la dipendenza di un fatto da altri fatti

## Unificazione
Operazione di istanziazione delle variabile durante la prova di un predicato, produce un insieme {X/Sx}. L'insieme ottenuto è detto Most General Unifier (MGU).

## Clausola di Horn
Disgiunzione di letterali in cui al massimo uno di questi è positivo.
-A | -B | C

Mi permette di riscrivere il tutto sotto forma di implicazione.
-(A & B) | C 
(A & B) -> C

## Risoluzione ad Input Lineare (SLD)
Procedura che porta alla dimostazione di verità di un goal.

Avviene sempre fra l'ultimo Goal derivato in ciascun passo e una clausola di programma, mai fra de clausole di programma o fra una clausola di programma ed un goal derivato in precedenza. 
Quindi uso sempre l'ultimo risultato.

Il risultato di un passo di risoluzione può essere:
* successo, se il goal corrente arriva ad essere la clausola vuota.
* insuccesso finito, se non posso più andare avanti a derivare dopo un po'
* insuccesso infinito, se vado avanti all'infinito a derivare tutto tranne la clausola vuota.

Il prolog va in profondità, fissa una clausola e tenta di risolvere quella, se non ne arriva una fa backtracking e allora passa alla clausola dopo. 
Potrebbe anche fare in parallelo più clausole, BReadth first.

Prolog va left-most, sviluppa sempre la clausola più a sinistra e si porta dietro il resto, in AND
 
## Cut
Complesso da interpretare, non vuol dire nulla nella logica, ma solo nell'esecuzione.
Se si incontra un cut il dimostratore si impegna di dimostrare il goal con la clausola corrente. In caso di fallimento non prova altre C che hanno come conseguente la stessa di prima. Se qualche clausola fallissie il backtracking si fermerebbe al cut.

Green cut, per ottimizzare il programma, rimuoverlo non fa alcuna differenza a livello di risultati.
Red cut, ci permette di omettere condizioni esplicite. Va usato con cautela. Se si vuole rimuovere questo tipo di Cut è necessario cambiare parte delle regole.

## Predicati meta-logici
* var(X) vero se X è variabile
* nonvar(X) -var(X).
* atomic(X) se X è un numero o una costante
* compound(X), -atomic(X)
* functor(Term, Name, Arity)
* arg(Position, Term, Arg).
* =.. univ Term to List

## Predicati su insiemi
* findall(Object, Goal, List)
produces a list List of all the objects Object that satisfy the goal Goal . Often Object is simply a variable, in which case the query can be read as: Give me a list containing all the instantiations of Object which satisfy Goal .
* bagof(Template, Goal, Bag)
bagof(C, father(X,C), Kids).
Raggruppa in base a X
bagof(C, X^father(X,C), Kids). non raggruppa, X libera

## Di ordine superiore
* call 

## Manipolazione base di dati
* listing
* assert, aggiunge al db
* retract, rimuove dal db
* assertz, aggiunge alla fine
* asserta, aggiunge all'inizio
* fail, forza backtracking

