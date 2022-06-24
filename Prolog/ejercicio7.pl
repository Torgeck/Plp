concatenar([],L,L).
concatenar([H|T],L,[H|C]):- concatenar(T,L,C).

pertenece(X,[X|_]).
pertenece(X,[_|T]):- pertenece(X,T).

ocurrencia(X,[H|[]],0):- X \== H.
ocurrencia(X,[X|[]],s(0)).
ocurrencia(X,[H|T],O):- X \== H, ocurrencia(X,T,O).
ocurrencia(X,[X|T],s(O)):- ocurrencia(X,T,O).

eliminar(_,[],[]).
eliminar(X,[X|T],T).
eliminar(X,[H|T],[H|C]):- X\==H, eliminar(X,T,C).

sustituir(_,_,[],[]).
sustituir(X,Y,[X|T],[Y|T]).
sustituir(X,Y,[H|T],[H|L]):- X\==H, sustituir(X,Y,T,L).

longitud([],0).
longitud([_|T],C):- longitud(T,X), C is X + 1.

Prefijo??????
