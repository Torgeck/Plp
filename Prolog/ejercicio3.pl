numeral(0).
numeral(succ(X)):- numeral(X).

suma(0,Y,Y).
suma(succ(X),Y,succ(Z)):- suma(X,Y,Z).

resta(X,0,X).
resta(X,X,0).
resta(succ(X),succ(Y),Z):- resta(X,Y,Z).

multi(0,_,0).
multi(succ(X),Y,Z):- multi(X,Y,R), suma(Y,R,Z).

div(0,_,0).
div(_,0,0).
div(X,succ(0),X).
div(X,Y,succ(Z)):- resta(X,Y,R), div(R,Y,Z).

pot(_,0,succ(0)).
pot(X,succ(0),X). %Acordarse que no existe el 1 por lo tanto se tiene que usar el equivalente a este "succ(0)"
pot(X,succ(Y),Z):- pot(X,Y,R), multi(X,R,Z).

mayorIgual(X,Y):- X = Y.
mayorIgual(X,Y):- Y = 0, X \= 0.
mayorIgual(succ(X),succ(Y)):- mayorIgual(X,Y). %Se restan ambos hasta que alguno llegue a 0
