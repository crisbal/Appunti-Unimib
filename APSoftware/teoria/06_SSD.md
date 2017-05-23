# Diagrammi di Sequenza e Contratti

Fanno parte dei diagrammi di interazione.

Un diagramma di sequenza di sistema è un elaborato che illustra eventi di input ed output relativi ai sistemi in discussione.

Un diagramma di sequenza di sistema è una figura che mostra, per un particolare scenario di un caso d'uso, gli eventi generati da attori esterni, il loro ordine e gli eventi tra i vari sistemi.

## Contratti

I contratti delle operazioni usano pre-condizioni e post-condizione per descrivere i cambiamenti agli oggetti in un modello di dominio.  

### Esempio di Contratto

Operazione: enterItem(itemId: ItemID, quantity: Integer)
Riferimenti: caso d'uso Process Sale
Pre-Condizioni: E' in corso una vendita
Post-Condizioni: E' stata creata una istanza di SalesItem, associata con la Sale corrente. SalesItem.quantity è diventata quantity, SalesItem è stata associata con una ProductDescription, in base alla corrispondenza con itemID

### Sezioni del contratto

* Operazioni: nome e parametri dell'operazione
* Riferimenti: casi d'uso in cui può verificarsi questa operazione
* Pre-condizioni: ipotesi significati sullo stato del sistema
* Post-condizioni: lo stato degli oggetti dopo il completamente dell'operazione (istanze, associazioni, modifica attributi)

