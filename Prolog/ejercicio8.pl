rotIzq([],[]).
rotIzq([H|T],R):- rotIzqAux(H,T,R).

rotIzqAux(X,[],[X]).
rotIzqAux(X,[H|T],[H|C]):- rotIzqAux(X,T,C).

rotDer([],[]).
rotDer(L,[X|R]):- rotDerAux(X,L,R).

rotDerAux(X,[X|[]],[]).
rotDerAux(X,[H|T],[H|C]):- rotDerAux(X,T,C).

elimOc(_,[],[]). %Caso base 
elimOc(X,[H|T],[H|R]):- X \== H,elimOc(X,T,R). %Si no se encuentra ocurrencia se agrega a la nueva lista
elimOc(X,[X|T],R):- elimOc(X,T,R). %Si se encuentra ocurrencia no se agrega a la nueva lista

sustOc(_,_,[],[]). %Caso base, cuando se termino de recorrer la lista
sustOc(X,S,[H|T],[H|R]):- X \== H, sustOc(X,S,T,R).
sustOc(X,S,[X|T],[S|R]):- sustOc(X,S,T,R).

longitud([],0).
longitud([_|T],C):- longitud(T,X), C is X+1.

%HACER_CARDINALIDAD

inver([],[]). %Caso base
inver([H|T],R):- inver(T,L), append(L,[H],R).

palind([],[]).
palind(L,R):- inver(L,I), append(L,I,R).

duplicar([],[]).
duplicar([H|T],[H,H|R]):- duplicar(T,R).


