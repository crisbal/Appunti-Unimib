# Casi d'uso

Un caso d'uso è una storia testuale, utilizzata per scoprire e catalogare i requisiti.

## Elementi di un caso d'uso

* Attore, qualcosa che interagisce con il sistema
* Scenario, una specifica sequenza di azioni tra gli attori e il sistema
	* Detta anche **istanza di un caso d'uso**
* Goal, obiettivo che lo scenario vuole portare a raggiungere

Un caso d'uso è una collezione di scenari *successfull* e *failure* che descrivono un attore usante un sistema in supporto ad un goal.

## Tipi di attore

* **Attore primario**: raggiunge degli obiettivi utente usando i servizi del sistema
* **Attore di supporto**: offre un servizio, spesso è un sistema informatico
* **Attore fuori scena**: ha un interesse nel caso d'uso, ma non rientra nelle prime due categorie

## Tipo di caso d'uso

* **brief**, un paragrafo scarso
	* generalmente descrive un solo scenario di successo
* **informale**, più paragrafi che coprono vari scenari sia di successoc che di fallimento
* **full**, tutti gli step e le variazioni del caso d'uso sono descritte in dettaglio 
	* Nome del caso d'uso
		* Inizia con un verbo
	* Portata
		* Il sistema che si sta progettando
	* Livello
		* Obiettivo utente o sottofunzione
	* Attore primario
	* Parti interessate e interessi
	* Pre-condizioni
	* Garanzia di successo
		* Cosa deve essere vero se il caso d'uso viene completato con successo
	* Scenario principale di successo
	* Estensioni
		* Scenari alternativi di successo e di fallimento
	* Requisiti speciali
		* Non funzionali
	* Elenco delle variabili tecnologiche e dei dati
		* "Varianti nei metodi I/O e nel formato dei dati"
		* 
	* Frequenza di ripetizione
	* Altre note

## Come scrivere casi d'uso

Concentrarsi su:

* lo scopo dell'attore
* cosa deve fare il sistema

Ignorare:

* l'interfaccia utente
* come il sistema fa le azioni richieste


## Verificare un caso d'uso

* Test del Capo
	* Se rispondendo con il nome del caso d'uso alla domanda del capo "Cosa hai fatto tutto il giorno?", il capo non si arrabbierà
* Test EBP
	* Ci si chiede se il caso d'uso aggiunge valore di business e lascia i dati in uno stato coerente
* Tese della dimensione
	* Il caso d'uso deve essere tra le 3 e le 10 pagine nel formato dettagliato

	