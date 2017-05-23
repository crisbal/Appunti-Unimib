# Algebra Relazionale

L'algebra relaziona è un insieme di operatori che agiscono su delle relazioni e producono relazioni. I vari operatori possono essere composti tra di loro per formare nuove interrogazioni.

## Operatori Algebra Relazionale

* Operatori insiemistici (unione, intersezione, differenza)
* Ridenominazione
* Selezine
* Proiezione
* Join

## Regole Generali

Posso appicare gli operatori dell'algebra relazionale solo a relazioni definite sugli stessi attributi.

I risultati devono essere relazioni, n-ple identiche danno luogo ad una sola n-pla

## Semantica e Sintassi

Con semantica si intende il significato dell'operatore: quello che fa quando viene applicato.

Con sintassi invece si dichiarano le regole che devono essere rispettate per comporre l'istruzione per mezzo di termini elementari

## Unione

Produce tutte le n-uple della prima e della seconda relazione.

## Intersezione

Produce le n-uple in comune tra la prima e la seconda relazione.

## Differenza

Produce le n-uple della prima relazione senza quelle della seconda.

## Ridenominazione

Operatore monadico (un solo argomento)

Modifica lo schema (il nome dell'attributo) lasciando intatte l'istanza della relazione.

Sintassi: $REN{Gen <- Padre}(Paternità)$

## Selezione

Operatore monadico.

Seleziona le ennuple che soddisfano una determinata condizione. Ho lo stesso schema dell'operando, contiene un sottoinsieme di n-uple dell'operando. 

SEL = THETA

SEL{Condizione}(Operando)

La condizione deve essere un'espressione booleana valida per ogni n-upla e vera per le n-uple da mettere nel risultato.

Selezione con valori nulli: IS NULL, IS NOT NULL.

## Proiezione

Necessario per selezionare un sottoinsieme degli attributi di una relazione.

Selezione: decomposizione orizzontale. Proiezione: decomposizione verticale.

E' un operatore monadico, opera su un unica relazione. Produce come risultato una relazione con una parte degli attributi dell'operando e che contiene tutte le n-uple della relazione, con solo gli attributi selezionati.

PROJ{Lista Attributi}(Operando)

Può contenere meno righe dell'operando. Si uniscono le righe uguale, ricordiamolo!

Se X è una superchiave, allora PROJ{X}(R) otteniamo tante n-upple quante R, perchè ovviamente ogni valore di R, essendo superchiave, compare una volta sola.

## Join

Operatore più importante dell'algebra relazionale. Permette di creare nuove relazioni collegandone altre relazioni.

### Join Naturale

Operatore binario (ma si può fare diventare n-ario) che produce una relazione definita sull'unione degli attributi degli operandi. Con n-ple costruite ciascuna a partire da una n-pla di ognuno degli operandi.

R1 JOIN R2 = n-ple t che rispettano la condizione {t su X1X2 | Esistono t1 \in R1 e t2 \in R2 con t[X1]=t1 e t[X2]=t2}

Cioè le ennuple che hanno gli stessi valori negli attributi in comune.

Se tutte le righe di tutte le tabelle contribuiscono al risultato, si parla di join completo.

### Join esterno

Salva le nuple che non si accoppiano, estendendole con dei valori nulli. In questo modo recupero tutte le n-uple che verrebbero escluse. Si parla di join esterno sinistro e destro e completo.

Sinistro = left join = mantiene tutte le n-uple del primo operando estendendole con valori nulli, se necessario.
Destro = right join = mantiene tutte le n-uple del secondo operando estendendole con nulli.
Completo = full join = si salvano sia le n-uple del primo operano che quelle della seconda operazione.

### Theta join

Join per relazioni che non hanno attributi in comune

R1 Join{Condizione} R2

Equi join: theta join in cui si usa solo l'operatore di uguaglianza

Si può omettere la condizione se gli attributi si chiamano uguale.

## Interrogazione

Dato uno schema R di base di dat, una interrogazione è na funzione che per ogni istanza di R produce una relazione su un dato insieme di attributi X.

