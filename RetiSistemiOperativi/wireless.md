# Wireless


## Generalità

* Wireless **hosts**: sistemi che eseguono applicazioni, telefoni, computer etc
* Wireless **links**: mezzo di collegamento tra host e base station. I link possono avere rate di trasmissione diversi e anche distanze supportate diverse.
* **Base station**: non esiste qualcosa di simile nei wired networks. La base station è responsabile dell'invio e della ricezione dei dati. 
    * Un host è associato ad una base station quando è nell'area coperta dalla base station e quando usa quella base station come mezzo di comunicazione verso altri network.
    * Le celle telefoniche e gli access point sono esempi di base station

Si dice che gli host che sono associati alla base station operano in *infrastructure mode* quando tutti i servizi tradizionali necessari al networking (DNS, Routing, etc) sono forniti dal network a cui l'host è connesso. 

Se gli host sono in modalità *ad hoc* invece non hanno un' infrastruttura a cui connettersi: è l'host stesso che deve fare da routing, DNS e molto altro.

Quando un host passa da una base station all'altra si ha un processo detto *handoff*: questo processo non è semplice e genera moltissimi potenziali problemi.

## Classificazione

Possiamo classificare le reti wireless in base a due criteri: il numero di "salti" wireless che un pacchetto fa nella sua trasmissione e se il network ha la "infrastructure" oppure no.

* **Single-hop, infrastructure-based**. Questi network hanno una base station che è connessa ad un network cablato più grande (ad esempio Internet). L'unica comunicazione wireless è quella tra host e base station. E' la situazione classica dell'**802.11** che usiamo a casa, oppure della rete **3G**.
* **Single-hop, infrastructure-less**. Questi network non hanno una base station, ma ci può essere un host tra tutti che fa da cordinatore. Esempi: **Bluetooth**, **802.11 ad-hoc**. 
* **Multi-hop, infrastructure-based**. In questi network c'è una base station che è connessa via cavo ad un network ma alcuni nodi wireless potrebbero aver bisogno di passare da altri nodi wireless per parlare con la base station. Esempio: **wireless mesh networks**.
* **Multi-hop, infrastructure-less**. Non c'è una base station e per parlare tra loro i nodi potrebbero aver bisogno di altri nodi. Sono un casino. Esempi: **MANETs, VANET**

## Wireless Link

Differenze dal link wired:

* **Diminuzione potenza segnale**. Le radiazioni elettromagnetiche si attenuano man mano che il segnale wireless passa attraverso la materia. Anche se non ci sono ostacoli il segnale si disperde, soprattutto all'aumentare della distanza.
* **Interferenza**. Se due station trasmettono alla stessa frequenza, le due si interferiscono. Addirittura anche tipologie diverse di trasmissione potrebbero interferiri. In più anche motori, microonde fanno interferenza.
* **propagazione multipath**. Se (perchè gli oggetti che comunicano sono in movimento, oppure per altri motivi) le onde della trasmissione rimbalzano (in modi diversi e imprevedibili) esse arriveranno a destinazione in momenti diversi.
* **più errori**. Gli errori sui bit sono molto più comuni nei wireless networks.   

## Host

L'host wireless riceverà quindi un segnale wireless degradato e disturbato. Un modo per misurare la qualità del segnale è il **rapporto segnale rumore** (SNR). Viene misurato in dB. Più è grande il SNR più il segnale è di buona qualità.
Un altro modo per misurare la qualità della trasmissione da parte dell'host è il BER: bit error rate. 

Da considerare:

* In generale se si aumenta la potenza aumenta il SNR e diminuisce il BER. Aumentare la potenza costa però energia e dopo un certo livello si arriva ad un limite.
* Per un certo SNR, aumentare il trasmission rate aumenta anche il BER.
* Il SNR (e quindi anche il BER) potrebbero cambiare in base alla mobilità dell'host o a cambiamenti dell'ambiente. In alcuni casi è possibile cambiare potenza al volo.


### Hidden Terminal Problem

A parla con B, C parla con B. A non sente C (perchè ad esempio troppo distante, o nascosto dall'ambiente). Sia A che C sono convinti che tutto stia andando bene.


### Fading

A parla con B, C parla con B. Il segnale di C arriva ad A talmente basso che A non lo sente, e anche viceversa. A e C credo che sia tutto ok.

# Wifi: 802.11 Wireless LANs

Ci sono molte varianti dello **standard 802.11**, la più popolare è la 11g. Più varianti possono essere usate dallo stesso dispositivo. 

Tra le varianti cambia la frequenza e il data rate.

Tutte le varianti usano **CSMA/CA**
Tutte le varianti supportano la modalità *infrastructure* ed *ad hoc*.

## Architettura

Il Basic Service set definisce i blocchi fondamentali dell'architettura WiFi. Uno o più host wireless ed una base station centrale, che prende il nome di *access point*. L'access point è generalmente collegato ad un router via cavo (oppure, come succede a casa, access point e router sono lo stesso hardware).

La stazione wireless ha un MAC di 6B (come Ethernet). Ogni AP ha il suo MAC, ogni host ha il suo MAC.

Noi studiamo l'architettura infrastructure, quella ad-hoc è troppo complicata.

### Access Point

L'access point ha un SSID (Service Set Identifier) e viene acceso su un determinato canale (può sceglere tra 11 canali nello standard 802.11b). 

La scelta del canale è fondamentale per evitare interferenze con AP vicine. Due canali non sono overlapping se sono separati da almeno 4 canali. 1, 6, 11 è l'unico insieme di canali non overlapping.

Per connettersi all'access point, l'host deve associarsi, attraverso una procedura di autenticazione. L'host dopo l'associamento ottiene l'indirizzo IP generalmente attraverso DHCP.

L'access point invia periodicamente un **beacon frames** che include l'SSID e il MAC address. L'host ascolta i beacon frames per fare la lista delle stazioni disponibili.

Quando è l'access point ad inviare i *beacon frames* si parla di **scansione passiva**.

Se invece è l'host che manda un frame di probing in broadcast si parla di **scansione attiva**.

Una volta eseguita l'associazione con un host, l'access point potrebbe richiedere l'autenticazione (eseguita attraverso semplici controlli sull'indirizzo MAC o con soluzioni più sofisticate basate su chiavi, username e password).

## Accesso al mezzo

Come politica di accesso al mezzo è stato scelto il CSMA/CA. Ognuno parla quando vuole, ma solo quando il canale è libero.

Non è possibile fare collision detection in quanto un host non può ricevere e trasmettere contemporaneamente (ed anche se fosse possibile ci sarebbe il problema del fading e dell'hidden host).

Visto che il wireless è più soggetto ad errori e visto anche che la politica CSMA/CA non fa troppo per evitare le collisioni, si è deciso di introdurre un sistema di ACK a livello di link. Se il trasmittente non riceva ACK entro un determinato lasso di tempo, il trasmittente re-invia il pacchetto.

Vediamo nei dettagli come si devono comportare il sender e il receiver di un pacchetto:

* il sender vede che il canale è libero
    * aspetta un breve intervallo di tempo (DIFS)
    * il sender invia il frame per intero e aspetta ACK
* il sender vede che il canale è occupato   
    * sceglie un valore di backoff esponenziale random e inizia a fare count-down solo da quando il canale è rilevato libero
    * quando il contatore arriva a zero il sender trasmette e aspetta un ACK
* il receiver riceve il pacchetto, invia l'ack (dopo un tempo SIFS)
    * se il sender non riceva l'ack re-invia il pacchetto, dopo aver atteso ancora un backoff esponenziale 

Il tempo di attesa DIFS e' superiore al tempo SIFS perchè gli ACK devono avere priorita' nei confronti delle nuove trasmissioni di dati.

Per ovviare al problema del fading e dell'hidden terminal il protocollo WiFi mette a disposizione una buona soluzione: **prenotare il canale prima di trasmettere**. 
Prima di parlare un host invia all'AP un frame di **RequestToSend** ed aspetta il **ClearToSend** da parte dell'AP. Il CTS viene anche usato implicitamente per dire alle altre stazioni di non trasmettere in quel periodo di tempo.

## Frame WiFi

Molto simile a quello Ethernet, ma con alcune differenze.

Alcuni campi degni di nota.

Payload: generalmente meno di 1500Byte, ma può arrivare fino a 2312B.

Address: 4 campi address. Il primo per il MAC del destinatario, il secondo per il MAC del mittente, il terzo è il MAC del router a cui il mittente è associato, il quarto usato per trasmissioni ad-hoc.

Sequence number: 2byte. Per permettere al meccanismo di ACK di funzionare

Durata: 2byte. Utilizzato per indicare la durata della prenotazione nei frame RTS e CTS.

Frame Control: 2byte. Contiene dettagli ulteriori sul frame, ad esempio la versione del protocollo, il tipo del frame, se è un frame host->AP o AP->host etc

## Mobilità all'interno di subnet

Cosa succede se ci spostiamo da un AP all'altro mentre usiamo WiFi?

Finchè ci si muove all'interndo di AP che hanno la stessa subnet non si perderanno le connessioni TCP aperte. Nel caso invece ci muoviamo da una subnet all'altra vengono messi in atto dei meccanismi più avanzati per tentare di salvare le connessioni aperte, ma noi non li vedremo.

L'host si muove da AP1 verso AP2. Il segnale verso AP1 inizia a diminuire. Host si connette ad AP2 che ha lo stesso SSID di AP1. Mantiene lo stesso indirizzo IP e non deve chiudere le connessioni TCP. Visto che AP1 e AP2 sono collegate allo stesso switch, lo switch tramite il self-learning si accorge che l'host è passato da AP1 ad AP2 e continuerà il suo lavoro senza troppi problemi. (C'è da ricordare che uno switch non è fatto per supportare troppi di questi salti tra AP1 e AP2, delle volte per far funzionare questa cosa vengono introdotti degli hack, ad esempio AP2 quando vede che host si connette invia un broadcast allo switch con MAC del mittente quello dell'host)

## Feature avanzate

### Adattamento del rate

Visto che la connessione tra un host e il suo AP potrebbe subire peggioramenti e miglioramente, 802.11 fornisce un implementazione di adattamento dei rate. Questa funzionalità permette di alzare il rate di trasmissione in caso non ci siano problemi (dopo 10ACK di fila si passa alla tier di data-rate successivo) o di abbassare il rate in caso di 2 mancati ACK consecutivi. Molto simile al TCP.

### Power managment

Il consumo di energia è importante. Un nodo può mettersi in sleep state settando un bit nell'header del frame. Mentre è in sleep state l'AP bufferizza (cioè non invia) tutti i pacchetti che erano destinati al nodo che ora dorme. Ogni 100msec l'AP invia nel proprio beacon frame la lista dei pacchetti che ha in buffer, il nodo si sveglia, vede se c'è qualche pacchetto destinato a lui, in caso positivo lo richiede, altrimenti torna a dormire. In questo modo un nodo che non ha pacchetti in ricevimento può stare a dormire per 99% del tempo.
