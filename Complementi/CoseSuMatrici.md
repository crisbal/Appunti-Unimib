# Matrici

## Definizione

Tabella di numeri a $p$ righe e $q$ colonne, composta da elementi

## Puo' essere 

### Quadrata
se $p = q$

### Triangolare superiore
Una matrice quadrata A di ordine $n$ si dice triangolare superiore se tutti gli elementi che si trovano sotto la diagonale principale sono nulli.

### Simmetrica 
Una matrice quadrata si dice simmetrica se i suoi elementi in posizioni simmetriche rispetto alla diagonale principale sono uguali.

### Identità
Chiamiamo matrice unità o matrice identica di ordine n la matrice quadrata $I_n$ avente tutti gli elementi della diagonale principale uguali a 1 e tutti gli altri elementi uguali a 0 (la matrice identica è, quindi, una matrice diagonale).
## Operazioni

### Trasposta
E' la matrice avente come elemento di posto $(j, i)$ l’elemento di posto $(i, j)$ della matrice di partenza.

### Somma tra matrici
Solo se hanno lo stesso numero di righe e colonne. Sommo termine a termine.

### Moltiplicazione per uno scalare
Moltiplico tutti i termini per un numero

### Prodotto tra matrici
A, B due matrici. Possibile solo se righe A = colonne B e colonne A = righe B
$c_{ij} := a_{i1}b_{1j} + a_{i2}b_{2j} + \ldots + a_{iq}b_{qj}$

### Inversa
Si dice inversa di A la matrice ottenuta facendo nell'ordine:

+ Trasposta di A
+ Complemento algebrico di A^t
+ cA^t/det(A)

## Determinante

### Metodi di calcolo
* Sarrus (solo 3x3)
* Calcolo per matrici ridotte
    * Su riga o colonna

### Proprietà
Una matrice quadrata con due righe o due colonne uguali ha determinante nullo.

Siano A e B due matrici quadrate di ordine n che si ottengono una dall’altra scambiando fra loro due righe. Allora det A = − det B. Un’analoga proprietà vale per lo scambio di colonne.

Se una matrice quadrata A ha una riga che è multipla di un’altra, allora det A = 0. Un’analoga proprietà vale per le colonne.

Sia A una matrice quadrata di ordine n e k un numero reale. Si ha allora: $\det (kA) = k^n \det A$.

**Teorema di Binet** Date due matrici quadrate dello stesso ordine A e B si ha: $\det(AB) = \det A \det B$.

# Sistemi lineari

## Teoria

### Teorema di Cramer

Se $\det(A) \ne 0$, allora c'è una ed una sola soluzione, altrimenti nessuna o infinite.

## Metodi risolutivi

### Cramer

Solo se la matrice delle incognite è quadrata

A_x = \frac{det A(x)}{det A}
A_y = \frac{det A(y)}{det A}
A_z = \frac{det A(z)}{det A}

### Gauss

Si riduce a scala la matrice e si sostituisce

Operazioni permesse: 
* Scambio di righe e colonne (se scambio le colonne devo fare attenzione)
* Moltiplico per uno scalare una riga/colonna
* Scrivo una riga come $k * \text{riga} + q * \text{altraRiga}$

### Gauss Jordan

Solo se la matrice delle incognite è quadrata, mi serve ALTRIALTRIcalcolare l'inversa.

$Ax=b \rightarrow A\cdot x \cdot A^{-1} = b \cdot A^{-1} \rightarrow I\cdot x = b \cdot A^{-1}$


# Vettori
