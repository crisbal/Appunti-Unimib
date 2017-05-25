# Refactoring

Refactoring is the process of changing a software system in such a way that it does not alter the external behavior of the code yet improves its internal structure

Refactoring is a change to the system that leaves its behavior unchanged, but enhances some nonfunctional quality, simplicity, flexibility, understandability, performance

## Step del refactoring

1) I test devono passare
2) Individuo i code smells
3) Determino come semplificare il codice
4) Semplifico
5) Mi assicuro che i test funzionino

## Quando fare refactoring

Prima di aggiungere una nuova funzione, quando si fixa un bug, prima di una code review.

Quando non farlo: quanto il design è pessimo, il codice non funziona o si è vicini ad una scadenza.

## Code smells

* A characteristic of a design that is a strong indicator of poor structure and should be refactored
* Code smells are rules of thumb
	* It is not always straightforward that a bad smell must lead to a refactoring
	* Bad code smells likely mean that you should change your code

* Duplicated code
	* Create a new method
* Long method
	* Split into smaller methods
	* Replace method with method object
* Feature envy: class that uses data and methods from another class to perform its work
	* Move method
	* OR Extract method
	* OR Move field
* Large class
	* Extract class
	* Move method
	* Extract subclass
* Data class: just a data holder
	* Move methods and extract data
* Refused Bedquest: a class does not use things it inherits from its superclass
	* Replace inheritance with delegation
* Middleman: too much delegation cal lead to objects that add no value
	* Remove middle man
	* Replace delegation with inheritance
* Long parameter list:
	* replace parameter with a method
	* introduce object
* Data Clumps: Duplicazione frequente di blocchi di dati dentro il codice
* Message Chain: Una serie di metodi vengono usati in sequenza per raggiungere un oggetto
* Typecast: Si usa frequentemente l'operazione di casting. In alcuni ambienti potrebbe essere considerato non ottimale.
* InstanceOf: Si usa instanceof per capire la classe o l'interfaccia di un oggetto.
* Primitive Obsession: Si usano variabili primitive al posto che classi/tipi specifici (ad esempio una string al posto di TelephoneNumber)
* Magic numbers: A literal value is used directly, rather than through a named constant.


### Other Code Smells

* Data Clumps

Duplicazione frequente di blocchi di dati dentro il codice

* Message Chain

Una serie di metodi vengono usati in sequenza per raggiungere un oggetto

* Typecast

Si usa frequentemente l'operazione di casting. In alcuni ambienti potrebbe essere considerato non ottimale.

* InstanceOf

Si usa instanceof per capire la classe o l'interfaccia di un oggetto.

* Primitive Obsession

Si usano variabili primitive al posto che classi/tipi specifici (ad esempio una string al posto di TelephoneNumber)

* Magic numbers

A literal value is used directly, rather than through a named constant.
