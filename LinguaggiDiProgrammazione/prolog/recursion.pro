c(a,b).
c(b,c).
c(d,e).
c(e,f).

canGo(From,To) :- c(From, To), !.
canGo(From,To) :- c(From, Middle), canGo(Middle, To).

sum(0,X,X).
sum(s(X),Y,Z) :- sum(X,s(Y),Z).  %sposto da X sopra Y, quindi alla fine arrivo ad avere 0 e tanti S(Y).

