# Altra Teoria

## Con quale criterio riempiamo la tabella del linguaggio diagonale?

La tabella, di dimensioni infinite è costruita mettendo sulle colonne numeri 1..n che indichiamo con j, mentre sulle righe numeri 1..m che indichiamo con i.

Riempiamo la tabella mettendo 1 se la cella indicata dalla MdT Mi (quindi rappresentata dal valore binario della cella i-esima) accetta in input la stringa Wj

----

## Come si definisce LD? E' RE?

LD è il linguaggio diagonale. LD è l'insieme delle stringhe Wi tali che Wi non si trova in L(Mi). Cioè l'insieme delle stringhe Wi non accettate dalla macchian di Touring Mi. Meglio ancora è l'insieme delle stringhe W tali che la MdT M (il cui codice è w) non accetta w come input.

LD non è RE. Non esiste MdT che lo accetta.

Dimostazione: Supponiamo che LD sia accettato da una MdT M. Visto che LD è costruito su {0,1}, M sta nella lista di MdT che abbiamo costruito (con la tabella). Quindi c'è almeno un codice alla riga i per cui M=Mi.
Ora chiediamo se Wi è in LD.

* Se wi fosse in LD, Mi accetterebbe Wi. Però, per definizione di LD, Wi non è in LD, perchè LD contiene solo i Wj tali che Mj non accetta Wj.
* Se Wi non fosse in LD, Mi non accetterebbe Wi, quindi per definizione di LD, Wi è in LD.

Visto che Wi non può essere e non essere in LD allo stesso tempo, concludiamo che M non può esistere, LD non è ricorsivamente enumerabile.

----

## Linguaggi Ricorsivi e Ricorsivamente Enumerabili

(Uso la definizione data in classe, non quella del libro)

I linguaggi Ricorsivi sono tutti quelli per cui esiste una MdT M tale che L=L(M). La macchian di Touring dice sempre se una stringa appartiene o no a quel linguaggio. Esiste quindi un algoritmo "deterministico". Esempi: tutti quelli dipendenti dal contesto (a^n b^n c^n)

Per i linguaggi ricorsivamente enumerabili esiste una MdT M tale che M si ferma sempre se una stringa w appartine al linguaggio, mentre non è detto che si ferma se non appartiene.
Esempi: Halting Problem, All regular, context-free, context-sensitive and recursive languages.

I linguaggio NON-RE sono quelli per cui non esiste una MdT.

----

## Si consideri il linguaggio universale Lu

1) Si dia la sua definizione

Il linguaggio universale Lu è il linguaggio formato dalle stringhe binarie Mi111wj  dove Mi è la codifica di una macchina di touring e wj è una stringa accettata dalla macchina di touring. Oppure ancora è il linguaggio formato dall'insieme di coppie (M,w) dove M è una macchina di touring con input binario e w è una stringa binaria tale che W è in L(M).

2) A quale classi di linguaggi appartiene? Come si dimostra tale appartenenza?

Lu è RE ma non ricorsivo. Lu è indecidibile.
Questo perchè riducendo Lu ad un problema P e si puo' dimostrare che non c'è algoritmo per risolvere P.

Teorema: Lu è RE ma non ricorsivo.
"Sappiamo da sopra che LU è RE" (perchè possiamo costruire la TM, usando una TM multinastro)
Supponiamo che Lu sia ricorsivo. Anche -Lu (il suo complemento) è ricorsivo. Quindi se abbiamo una MdT M che accetta -Lu possiamo anche costruire una macchina di Touring che accetta Ld. Visto che sappiamo che Ld è non-RE (e quindi non esiste MdT per Ld) abbiamo una contraddizione.

3) In che modo è in relazione con il problema della terminazione dei programmi?
Spesso si sente dire che l'halting problem è simile a Lu. Infatti la macchina originale di Alan Turing accettava per "halting" e non per "stato finale". Possiamo quindi definire H(M) per la MdT M l'insieme di input w tali che M si ferma per w, indipendentemente se M accetta w o no. Quindi l'halting problem diventa un insieme di coppie (M,w) tali che w sta in H(M). Come si voleva dimostrare.

----

## Perchè si è sicuri che esista un linguaggio non RE? Dare un esempio di tale linguaggio e dimostrare che non è RE.

Perchè si è sicuri?????? (BOH?)

Prendiamo due linguaggi: Le ed Lne. Entrambi consistono di stringhe binarie.
Se w è una stringa binaria rappresentante una MdT, w appartine a Le se la MdT non accetta stringhe, altrimenti a Lne se MdT accetta stringhe.
Lne è il linguaggio più semplice da dimostrae ed è RE ma non ricorsivo.
Le è non RE.

Per prima cosa si dimostra che Lne è ricorsivamente enumerabile.
Per fare questo basta mostrare una TM (non-deterministica) che accetta Lne.

* M prende in input una MdT codificata da Mi.
* Usando le sue capacità non-deterministiche, M indovina l'input di w per cui Mi potrebbe accettare
* M testa se Mi accetta w.
* Se Mi accetta w, alloara M accetta Mi.

Proviamo ora che Lne non è ricorsivo.
Per fare questo riduciamo Lu a Lne. (Procedimento lunghissimo)

Detto ciò possiamo sapere lo stato di Le. Se Le fosse RE sia Lne che Le sarebero ricorsivi. Visto che Lne è non ricorsivo alloa concludiamo che Le è non RE.
 
