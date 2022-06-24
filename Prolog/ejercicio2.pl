on(bloque1,bloque2).
on(bloque2,bloque3).
on(bloque3,bloque4).
on(bloque4,bloque5).

arriba(X,Y):- on(X,Y).
arriba(X,Y):- on(X,Z), arriba(Z,Y).
