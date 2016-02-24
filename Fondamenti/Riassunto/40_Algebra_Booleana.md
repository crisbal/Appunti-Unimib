# Algebra Booleana


## Definizione

Si definisce **algebra booleana** un **reticolo** $\pangle{B,R}$ caratterizzato dall'essere **distributivo**, **limitato** e **complementato**.

Più precisamente, si parla di algebra di Boole in riferimento ad un insieme B sul quale sono definite due operazioni binarie $\sqcap$ e $\sqcup$, un'operazione unaria ('), e $\underline{1}$ e $\underline{0}$ due costanti, in modo da ottenere la sestupla ordinata(?) $\pangle{B,\sqcap,\sqcup,',\underline{0},\underline{1}}$, che costituisce un reticolo distributivo, limitato e complementato.

**Chiarimento**

Generalmente l'operazione $\sqcap$ è chiamata **AND** e si indica anche con $\**$, l'operazione $\sqcup$ è chiamata **OR** e si indica anche con $+$ e l'operazione $'$ è chiamata **NOT** e si indica anche con $!$ o con $\neg$ o anche con $-$. 

## Enunciato

E' detto enunciato booleano una proposizione della quale si può sempre dire se è vera o falsa (non lascia cioè spazio ad ambiguità).

Nell'algebra di Boole un enunciato è ottenuto dalla combinazione di **termini** e **operatori**.

## Termini

I termini di un enunciato sono essi stessi degli enunciati, ovviamente meno complessi dell'enunciato che sto costruendo. Preso un termine posso infatti dire con certezza se è vero o falso.

Tra tutti i termini riconosciamo dei termini elementari che possono essere o delle costanti ($\underline{0}$ e $\underline{1}$) o delle variabili, generalmente indicate con le lettere minuscole $a,b,c,...$, che come suggerisce il nome variano a seconda dei casi.

La presenza di variabili non lascia comunque spazio ad ambiguità perché, sostituita una variabile con $\underline{0}$ o con $\underline{1}$, posso sempre dire se l'espressione che contiene le varibili è vera o falsa.

## Proprietà Algebra di Boole

**Commutativa**
$a+b=b+a \qquad a*b=b*a$

**Associativa**
$a+(b+c)=(a+b)+c \qquad a*(b*c)=(a*b)*c$

**Assorbimento**
$a+(a*b)=a \qquad a*(a+b)=a$

**Distributiva**
$a*(b+c)=(a*b)+(a*c) \qquad a+(b*c)=(a+b)*(a+c)$

**Idempotenza**
$a+a=a \qquad a*a=a$

**Esistenza di minimo e massimo**
$a*0=0 \qquad a+1=1$

**Esistenza del complemento**
$a*!a=0 \qquad a+!a=1$

## Extra

La **più piccola algebra di Boole** esistente è quella definita sull'insime {0,1}.

È possibile definire un'algebra di Boole su ogni insieme che ha come numero di elementi una potenza di due.

È detto enunciato duale $D'$ di un enunciato $D$, l'enunciato ottenuto scambiando $\sqcap$ con $\sqcup$ e $\underline{1}$ con $\underline{0}$. Se è dimostrabile $D$ anche il suo duale $D'$ sarà dimostrabile.
