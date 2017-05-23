%List stuff

doubleLen([],[]).
doubleLen([_,_|R],[_|R2]) :- doubleLen(R,R2).

reverse(S,R) :- reverse(S, [], R).
reverse([], Acc, Acc).
reverse([H|Tail], Acc, Ret) - reverse(Tail, [H|Acc], Ret).

compress([],[]) :- !.
compress([X],[X]) :- !.
compress([X,X|R], R2) :- compress([X|R], R2), !.
compress([X,Y|R], [X|R2]) :- !, X\=Y, compress([Y|R], R2).

duplicate([],[]) :- !.
duplicate([X], [X,X]) :- !.
duplicate([X|R], [X,X|R2]) :- duplicate(R,R2).

project([],[]) :- !.
project([F|R],[E|R2]) :- functor(F,_,N), N>=2, arg(2, F, E), project(R,R2).


horn(and(ListOfOrs)):- 
    loopAnd(ListOfOrs).

loopAnd([]) :- !. %gestisci caso base / secondo input
loopAnd([or(List)|Rest]) :- 
    loopOr(List,N), 
    N=<1, %se un or mi ritorna un numero di non-not <=1 allora va tutto bene
    loopAnd(Rest).

loopOr(P, 0) :- atomic(P), !. %gestisci primo input
loopOr([], N) :- !.  %caso base 
loopOr([Pred|Rest], N) :-  
    functor(Pred, Name, _), 
    Name\=not, %una cosa diversa dal not
    !, %per forza qui devo proseguire
    loopOr(Rest, N2), %conto il resto
    N is N2+1. %aggiorno il contatore
loopOr([_Pred|Rest], N):- %trovo un not
    loopOr(Rest, N). %proseguo


replace([], X, Y, []).
replace([X|Resto], X, Y, [Y|Altro]) :- !, replace(Resto, X, Y, Altro).
replace([O|Resto], X, Y, [O|Altro]) :- replace(Resto, X, Y, Altro).
