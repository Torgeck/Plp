program punto18;

  var
    maxElementos = 256;
  Type
    tipoIndicieCojuntos = 1 .. maxElementos;
    conj = array [tipoIndicieCojuntos] of boolean;

  procedure union(conjA,conjB:conj; max:integer);
  {Va a tener dos loops para analiazar cada uno de sus elementos}
  var 
    indA,indB:Integer;
    unionArreglo: array[ 1 .. (2 * max)] of boolean;
  begin
    for indA := 1 to 256 do
      begin
        for indB := 1 to 256 do
          begin
            if
          end;
      end;
  end;

