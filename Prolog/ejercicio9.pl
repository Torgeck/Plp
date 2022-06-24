inclusion([],_).
inclusion([X|Xs],L):- pertenece(X,L), inclusion(Xs,L).

pertenece(_,[]):- false.
pertenece(X,[X|_]).
pertenece(X,[H|T]):- X \== H, pertenece(X,T).

igualdad([],[]).
igualdad([X|Xs],[X|Ys]):- igualdad(Xs,Ys).

union([],L,L).
union([X|Xs],L,R):- pertenece(X,L), union(Xs,L,R).
union([X|Xs],L,[X|R]):- not(pertenece(X,L)), union(Xs,L,R).

interseccion([],_,[]).
interseccion([X|Xs],L,[X|R]):- pertenece(X,L), interseccion(Xs,L,R).
interseccion([X|Xs],L,R):- not(pertenece(X,L)), interseccion(Xs,L,R).

diferencia([],_,[]).
diferencia([X|Xs],L,[X|R]):- not(pertenece(X,L)), diferencia(Xs,L,R).
diferencia([X|Xs],L,R):- pertenece(X,L), diferencia(Xs,L,R).

