# RDF

RDF sta per Resource Description Framework.

Modello per la rappresentazione dei dati sul Web.

## Unità di base 

* triple: unità base di organizzazione delle informazioni
* grafi orientati: insiemi di triple
* URI: identificazione univoca sul web degli oggetti rappresentati
	* devo avere una radice comune a tutte le risorse: un sito in cui posso mettere le risorse
	* possono esssere abbreviati con i namespace

## Caratteristiche

* Indipendenza: ognuno può inventare i predicati
* Interscambiabilità: posso convertire RDF in XML
* Scalabilità: semplici da replicare e da parsare
* Le proprietà sono risorse: anche esse hanno un URI


## Triple

Le triple sono nel formato 

`soggetto predicao oggetto`

Un oggetto può essere un altra risorsa RDF oppure un literal.

Esistono plain literals (stringhe) e typed literals (stringhe contestualizzate)

`"2006"^^xsd:integer`

## RDF Schema

## RDFS

RDF Schema, serve a dare più espressività e a vincolare domini e codomini di certe proprietà

E' un estensione di RDF che permette di esprimere concetti sopra i limiti e i vincoli di RDF. In particolare ci permette di definire il concetto di classe, proprietà, risorsa, letterale, gerarchia di classi, domini.

**Definisce classi e proprietà che possono essere usate per descrivere classi e proprietà e risorse**

## OWL

Un estensione di RDF che mi permette che mi permette di fare i check dei vincoli e stabilire relazioni simil prolog.
