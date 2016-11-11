mymember([X|_Resto], X) :- !.
mymember([_A|Resto], X) :- mymember(Resto, X).

%conta quante volte ci sta dentro un elemento
mymember([], X, 0) :- !. 
mymember([X], X, 1) :- !.
mymember([Y], X, 0) :- !.
mymember([X|Resto], X, N) :- mymember(Resto, X, N2), N is N2+1, !.
mymember([Y|Resto], X, N) :- mymember(Resto, X, N).

%elimina da una lista tutte le occorrenze di un elemento
eliminadalista([], E, []).
eliminadalista([E|Resto], E, Ris) :- eliminadalista(Resto, E, Ris), !.
eliminadalista([O|Resto], E, [O|Ris]) :- eliminadalista(Resto, E, Ris).

%lunghezza lista
len([], 0).
len([X|Resto], Len) :- len(Resto, OtherLen), Len is OtherLen+1.

%somma elementi lista
sum([],0).
sum([X|Resto], Sum) :- sum(Resto, OtherSum), Sum is OtherSum+X.

%elimina duplicati [1,1,3,2,1,2,3]-> [3,1,2], elimina man mano la prima occorrenza, metodo meh ma gli va bene
eliminaDuplicati([],[]).
eliminaDuplicati([X|Resto], Ris) :- 
    mymember(Resto, X), 
    eliminaDuplicati(Resto, Ris), !.
eliminaDuplicati([X|Resto], [X|Ris]) :- 
    eliminaDuplicati(Resto, Ris).

%valore assoluto
abs(X, Y) :- X<0, !, Y is X*(-1).
abs(X, X).

