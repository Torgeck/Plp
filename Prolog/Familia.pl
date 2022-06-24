%Progenitor
progenitor(juan, ana).
progenitor(maria, ana).
progenitor(pedro,pablo).
progenitor(maria,pablo).
progenitor(juan,luis).
progenitor(maria,luis).
progenitor(pedro,luciano).
progenitor(laura,luciano).
progenitor(laura,ariel).
progenitor(pedro,ariel).
progenitor(tomas,pedro).
progenitor(jose,juan).
progenitor(daniel,laura).
progenitor(andrea,laura).
progenitor(eugenia,maria).
progenitor(martin,maria).
progenitor(eugenia,rodolfo).
progenitor(martin,rodolfo).
progenitor(eugenia,sandra).
progenitor(martin,sandra).
progenitor(rodolfo,damian).
progenitor(claudia,damian).
progenitor(norma,andrea).
progenitor(carlos,andrea).
progenitor(norma,cecilia).
progenitor(carlos,cecilia).
progenitor(cecilia,gabriel).
progenitor(javier,gabriel).
progenitor(jorge,carlos).
progenitor(silvia,carlos).


% Femenino o Masculino

femenino(ana).
femenino(maria).
femenino(laura).
femenino(eugenia).
femenino(andrea).
femenino(sandra).
femenino(claudia).
femenino(norma).
femenino(cecilia).
femenino(silvia).

masculino(juan).
masculino(pedro).
masculino(pablo).
masculino(luis).
masculino(luciano).
masculino(ariel).
masculino(tomas).
masculino(jose).
masculino(daniel).
masculino(martin).
masculino(rodolfo).
masculino(damian).
masculino(carlos).
masculino(gabriel).
masculino(javier).
masculino(jorge).

%Casados
casado(juan, maria).
casado(pedro, laura).
casado(eugenia, martin).
casado(rodolfo, claudia).
casado(daniel, andrea).
casado(norma,carlos).
casado(cecilia,javier).

%PadreYMadre
padre(Y,X):-progenitor(Y,X), masculino(Y).
madre(Y,X):-progenitor(Y,X), femenino(Y).

%Hermano 
% Incluye hermanastros ycopias de ellos mismos al tener los mismos padres ymadres	
hermano(X,Y):-progenitor(Z,X),progenitor(Z,Y), X \= Y.

%Abuelo Y Bisabuelo
abuelo(X,Y):-progenitor(X,Z),progenitor(Z,Y).
bisabuelo(X,Y):-abuelo(X,Z),progenitor(Z,Y).

%Tio yPrimo
tio(X,Y):-hermano(X,Z),progenitor(Z,Y).
primo(X,Y):-tio(Z,X),progenitor(Z,Y).

%Ancestro
ancestro(X,Y):-progenitor(X,Y).
ancestro(X,Y):-progenitor(Z,Y),ancestro(X,Z).

%Soltero
soltero(X):- \+(casado(X,_);casado(_,X)).

%Amante(Serian los que tienen hijos extramatrimoniales?)
casados(X,Y):- casado(X,Y).
casados(X,Y):- casado(Y,X).
amante(X,Y):- progenitor(X,Z),progenitor(Y,Z), \+(casados(X,Y)), X \= Y.

%Suegra ySuegro
suegra(X,Y):-casado(Y,Z),madre(X,Z).
suegra(X,Y):-casado(Z,Y),madre(X,Z).

suegro(X,Y):-casado(Y,Z),padre(X,Z).
suegro(X,Y):-casado(Z,Y),padre(X,Z).

