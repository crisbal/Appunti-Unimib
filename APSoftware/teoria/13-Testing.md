# Agile Testing

## Short releases, incremental delivery

Tests developed incrmentally along with the software

No testing phase

Ogni new feature e miglioramento deve essere descritto da un set di test cases

## Time Boxed Iterations

Il progresso deve essere misurabile oggettivamente

Specifica le feature attraverso i test costruiti prima delle feature

Assicurarsi che non si scrivano i test solo per la parte di codice che è già stata scritta

## Pair Programming and Collective Ownership

Continuos code inspection: controllo continuo

Implicit check list: costruiamo nel gruppo cosa è importante e cosa no === team culture

## Refactoring

Si testa per capire se il refactoring è andato a buon fine.

## Customer involment

Se si fa progresso o si peggiora lo si comunica all'utente: per capire questo guardo i test.

Inoltre i test mi permettono di capire quali requisiti sono ambigui o mal specificati.

# Testing Granularity

## Tipologia di Test

### Unit Testing

Testo i singoli pezzi, nella speranza che sono fatti bene. Se non va l'unit test non va il tutto.

### Integration Testing

Metto insieme i pezzi: capisco se il sistema si monta insieme bene

### System Testing

Testo le funzionalità complete

### Test di accettazione

L'utente va bene con la soluzione?

### Test di non regressione

La versione del prodotto va almeno tanto bene quanto la versione precedente

## Testing Goals

* Test alle functional properties: quello che fa
	* Due macchine entrambe mi portano dal punto A al punto B
* Test alle non functional properties: come lo fa
	* Una macchina mi porta "bene" l'altra "male"

## Testing Approaches

* Test Funzionale
	* Faccio test partendo da quello che penso il software debba far
* Test Strutturale
	* Guardo dentro la struttura e genero i test in base alla struttura del codice
(* Test basato sui difetti
	* Testo i casi critici)

## Test in agile

* Definisco nella startup le unit test
* Nello sprint faccio i test di integrazione/funzionale
* Quando torno nella startup faccio regression testing. Mi chiedo anche se il software è testato bene, attraverso il test strutturale
* Faccio acceptance testing durante la review
...

## Come creare i casi di test

I test sono un campione dello spazio, di tutte le possibilità

* Expert Judgement: una persona genera i casi di test usando la sua esperienza
	* Svantaggio: costo (in tempo) e misurabilità (non so se i test che ha fatto sono abbastanza, devo fidarmi di chi scrive i test)
* Combinatorial testing:
	* Definisice meccanismi automatici di generazioni di varianti di test
	* La qualità è determinata da:
		* Numero di test per caso
		* Numero di casi
* Model based testing:
	* Segue un modello di passi per scrivere i test, scegliendo un modello