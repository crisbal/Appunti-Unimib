sum(0, Y, Y).
sum(s(X), Y, s(Z)) :- sum(X,Y,Z).

product(X, s(0), X) :- !.
product(X, s(Y), Z) :- product(X, Y, R), sum(X, R, Z).

