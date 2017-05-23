# RDD

Responsibility Driven Development

E' una progettazione basata su:

* responsabilità
 * cioè che si deve fare
 * gli oggetti hanno responsabilità
* ruoli
 * obiettimo o capacità che un oggetto o una classe ha di partecipare ad una relazione con un altro oggetto
* collaborazioni
 * oggetti collaborano per raggiungere un obiettivo

## Responsabilità

* Responsabilità di fare
 * Di fare qualcosa: calcolo, creare oggetti, iniziare azioni, controllare
 * Di conoscere: conoscere i dati incapsulati, gli oggetti correlati

Granularità delle responsabilità:

* Fine: aggiungere un metodo ad una classe
* Grossa: progettazione di numerose classi

Quando assegno le responsabilità? O durante la modellazione o durante la codifica. In UML durante la modellazione statica e dinamica.

## Principi della progettazione

* Information Expert: principio generale di assegnazione delle responsabilità
 * una classe possiede le informazioni necessarie per soddisfare le responsabilità
 * modellando il sistema trovo nuove responsabilità
* creator: responsabile creazione di una nuova istanza di una classe
 * chi deve essere responsabile della creazione di una nuova istanza di una classe?
 * assegnare a B le responsabilità di creare istanze di tipo A se e solo se:
  * B aggrega oggetti di tipo A
  * B utilizza A
  * B possiede tutti i dati per l'inizializzazione di A
* low coupling: dipendenza bassa e riuso maggiore
 * estremizzato in un sistema per cui si comunica via messaggi, non sempre buono
* high cohesion: mantenere oggetti focalizzati, comprensibili e gestibili
 * un oggetto che fa non troppe cose e tutte correlate ha coesione alta
 * una classe con coesione bassa fa tante cose non correlate
 * regola pratica, una classe con coesione alta: ha pochi metodi con funzioni correlate e non fa troppe cose, collabora con gli altri oggetti per condividere lo sforzo
* controller: primo oggetto oltre lo strato di ui che coordina un'operazione di sistema
 * si usa per la logica applicativa
 * svincolo la UI
 * non si devono fare controller troppo complessi
