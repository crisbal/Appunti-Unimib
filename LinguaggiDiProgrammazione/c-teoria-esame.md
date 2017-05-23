# Puntatore a carattere costante e puntatore costante a carattere

[Più info](http://stackoverflow.com/questions/890535/what-is-the-difference-between-char-const-and-const-char)

```
const char* carattere; // puntatore a un carattere costante
char* const carattere; // puntatore costante a carattere
const char * const carattere; // puntatore costante a carattere costante

int       *      mutable_pointer_to_mutable_int;
int const *      mutable_pointer_to_constant_int;
int       *const constant_pointer_to_mutable_int;
int const *const constant_pointer_to_constant_int;
```

# Puntatori 

```
int x = 42;
int *p; // puntatore ad un intero
p = &x; // associo a p l'indirizzo di x
int n = *p; //associo a n il valore puntato da p, cioè 42  
```

```
/*
Somma riceve come input due puntatori ad interi, e ritorna la somma del valore associato ai puntatori
*/
int somma(int* a, int* b)
{
    return *a + *b;    
}
```

# Quale è la differenza tra il modificatore extern e quello static?

```
extern conts int NUMERO;
extern int somma(int, int);
```

```
static int somma(int x, int y)
```

`extern`:
la dichiarazione seguente ha una definizione non locale, ovvero la definizione dell’oggetto dichiarato si trova più in là nel file od in un altro file

`static`:
la dichiarazione o definizione seguente viene “fissata” nello spazio
di memoria globale e non è visibile al di fuori del file in cui essa
appare

Extern si usa essenzialmente per dichiarazioni da mettere in file di interfaccia, mentre static si usa soprattutto per definizioni globali in un file

Inoltre le variabili static mantengono il loro valore tra una chiamata di funzione e la successiva;

