# Progettazione Concettuale

Schema concettuale: schema che descrive i requisiti degli utenti, più vicina all'utente.

Schema logico: trasforma lo schema concettuale in uno schema logico-relazionale. Lo si sviluppa ottimizzando il più possibile le operazioni.

Schema fisico: quello che viene salvato su disco. Si aggiungono le caratteristiche fisiche: ad esempio la lunghezza del blocco.

Per progettare concettualmente ho bisogno di raccogliere i requisiti: è una operazione lunga e complessa, è necessario raccoglierli secondo strategie.

## Qualità scherma concettuale

Caratteristica desiderabile dello schema: 

* correttezza 
 * rispetto ai requisiti: i requisiti sono rappresentati nello schema coerentemente con il signficato dei concetti nel modello ER
 * rispetto al modello: i concetti del modello sono usati nello schema in accordo al loro significato, non uso un entità per un numero civico, uso un'entità per rappresentare una persona.
* completezza: tutti i requisiti devono stare nello schema
* pertinenza: non vi devono essere concetti che non ci sono nei requisiti
* minimalità: un solo concetto per ogni requisito. non posso togliere un concetto e rispettare ancora i requisiti.
* leggibilità: i requisiti devono essere rappresentati in modo comprensibile
 * leggibilità grafica: non si devono incrociare le linee, le linee non devono essere oblique
 * leggibilità concettuale: scegliere le strutture del modello che danno luogo ad uno schema compatto

## Strategie di progettazione

### Bottom up

Si individua per prima cosa i concetti più elementari (gli attributi). Si identificano poi le entità (e si presta attenzione alle generalizzazioni che potrebbero crearsi). Infine si sviluppano le relazioni (con gli attributi ad essse collegati) e le cardinalità.

### Inside Out

Si identificano i concetti principali (e non quelli più elementari) e li si rappresenta con un entità. Si implementano poi le relazioni più importanti che coinvolgono le entità e ci si dedica poi alle generalizzazioni. In generale ci si sposta da dentro (l'entità più importante) verso l'esterno.

### Top Down

Si parte da una visione d'insieme dello schema (una sola entità) e via via la si divide in entità più piccole. Si aggiungono alla fine generalizzazioni ed attributi.
