PROGRAM ejemplo; {Cabecera}
    CONST max = 100; {Constantes}
    VAR a:integer; {Variables}
BEGIN {Inicia el programa principal}
  write ('Escriba un numero: ');
  read(a);
  a := a+max;
  writeln('El resultado de A + 100 es: ',a);
END. {Finaliza el programa principal}