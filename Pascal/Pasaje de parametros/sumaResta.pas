program sumaResta;
Var a,b,resultado: integer;

    function suma(x:integer; y:integer):integer;
    begin
      suma:= x + y;
    end;

    function resta(x:integer; y:integer):integer;
    begin
      resta:= x-y;
    end;

    begin
      Writeln('Ingrese un valor para a');
      Read(a);
      Writeln('Ingrese un valor para b');
      Read(b);
      resultado:= suma(a,b);
      WriteLn(a,' + ',b,' = ',resultado);
      resultado:= resta(a,b);
      WriteLn(a,' - ',b,' = ',resultado);
    end.
