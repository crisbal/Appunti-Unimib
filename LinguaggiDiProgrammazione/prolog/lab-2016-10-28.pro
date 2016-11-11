%natural numbers
natural(0).
natural(s(X)) :- 
    natural(X).

%sum of two numbers
sum(0, X, X).
sum(s(X), Y, Z) :- 
    sum(X, s(Y), Z).


%product
times(0, X, 0).
times(s(X), Y, Z) :- 
    times(X, Y, P), 
    plus(P, Y, Z). %Z è accumulatore

% times(s(0), s(s(0)), R)
%     -> chiamo times(0, s(s(0)), P).
%               -> CASO BASE P=0
%     -> chiamo plus(0, s(s(0)), T)
%               s(s(0))
% in sostanza times lo chiamo solo per far chiamare le somme che poi mi porto dietro tramite Z

%double a list
doublelist([], []).
doublelist([E|R], [E, E | Y]) :- doublelist(R, Y).

%check if element in list
inlist(X, [X|R]) :- !.
inlist(X, [H|R]) :-
    inlist(X, R).

%join
join([], L, L).
join([A|X], Y, [A|Z]) :- join(X, Y, Z).

%same length
sameLen([], []).
sameLen([H1|R1], [H2|R2]) :- sameLen(R1,R2).
