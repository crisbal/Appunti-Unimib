# Laboratorio

### Input Analizzatore Lessicale
Sequenza di stringhe di simboli unicode che vengono trasformati in token

### Input Analizzatore sintattico
Sequenza di token lessicalmente corretti

### Dfferenza tra grammatica lessicale e grammatica sintattica
L'analisi lessicale raggruppa e controlla i simboli in token che verranno analizzati sintatticamente dal parser che controlla la loro composizione alla base della sintassi del linguaggio.

### Compilatore

* Line Recontructor - prepara l'input per il lexer
* Lexer + Parser - riconosce Token e crea la struttura sintattica del codice
* Semantic Checker - crea il parse tree
* Code Generator - analisi ed ottimizzazione del parse tree

### Parse Tree
E' l'output di un parser e rappresenta la struttura sintattica di un programma

### Parse Stack
Contiene i vari token letti dall'inputi attraverso l'operazione di shift.

### Bottom-up parser
Si parte dalla stringa prodotta e si costruisce il parse tree dalle fogli verso i vari padri fino alla root (start symbol).

### Left-right parser
Legge la stringa da sinistra a destra
E cerca nell'input elaborato le sottostringhe che corrispondono al corpo di una produzione partedo da destra e applica quella produzione al contrario.


