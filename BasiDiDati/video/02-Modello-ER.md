# Entità e attributi di entità

Schema concettuale: insieme di concetti decritti per mezzo di strutture di rappresentazione. Più astratto del modello logico.

## Entità

Una entità è una classe di oggetti che:

* Sono di interesse per l'applicazione
* hanno esistenza autonoma
* hanno proprietà comuni

Ogni entità ha un nome, univoco, singolare, espressivo. E' rappresentata graficamente da un rettangolo

Ad ogni entità è associata una descrizione.

Una istanza di un'identità denota un oggetto dell'insieme rappresentato dall'entità

## Attributo di entità

Proprietà locale e caratteristica di un'entità, di interesse ai fini dell'applicazione. Proprietà il cui valore in ogni istanza dipende solamente dall'istanza dell'entità e non da altri elementi dello schema. Il valore di un attributo appartiene ad un dominio.

Ogni attributo ha un nome (univoco dentro l'entità). Un attributo si rappresenta da un cerchio collegato alla entità a cui l'entità appartiene.

# Relazioni

Fra due o più entità definiamo il concetto di relazione: un legame logica fra più entità. Il numero di entità coinvolte nella relazione definisce il grado dell'entitò.

Ogni relazione ha un nome che identifica la relazione nell'ambito nello schema. Si rappresenta con un rombo collegato alle entità che la relazione collega. 

Una relazione può essere istanziata, specificando in una tupla le entità che sono coinvolte.

Il nome della relazione deve essere singolare, espressivo e si preferiscono i sostantivi invece che i verbi (se possibile e naturale)

## Attributo di relazione

E' un attributo che non appartiene ad alcuna entità coinvolta nella relazione. E' una proprietà del legame logico rappresentato dalla relazione. Anche in questo caso l'attributo ha un dominio.

# Cardinalità

Un vincolo di cardinalità tra un entità E ed una relazione R espreime un valore minimo ed un valore massimo di istanze della relazzione R a cui può partecipare ogni istanza dell'entità E. Serve a caratterizzare meglio il significato di una relazione.

# Tipi di relazioni

1 a 1
1 a n
n a n

# Relazione IS-A

Definibile tra due entità, una padre e una figlia. L'entità figlia rappresenta un sottoinsieme delle istanze dell'entità padre.

Si rappresenta con una freccia dal padre al figlio.

Tutti gli attributi del padre li ha il figlio.

Il padre potrebbe generalizzare più entita figlie, attraverso la propriet dell'erediterietà.

Una generalizzazione può essere di due tipi: 

* Completa, cioè se l'unione dei figli da il padre
* Non complete, cioè se l'unione dei figlio non da il padre

# Relazione n-arie e identificatori

Attributo composto: attributo definito su un dominio complesso, un dominio di tipo record. 

Identificatore: insieme di proprietà/attributi che permettono di identificare univocamente un'entità.

Identificatori interni: formato solo da attributi dell'entità.
Identificatori esterni: formato da attributi dell'entità e da relazione che coinvolgono l'entità