program punto20;

const 
  n = 3;

type 
  tMatriz = array [1 .. n] of array [1 .. n] of Integer;

var 
  matriz :tMatriz;
  i,j: Integer;

  procedure muestra(m:tMatriz;maximo:integer);
    var
      i,j:Integer;
    begin
      for i:= 1 to maximo do
        begin 
          for j:= 1 to maximo do
            begin 
              Write('[',matriz[i,j],'] ');
            end;
          WriteLn();
        end;
    end;

    function traza(m:tMatriz; maximo:integer):Integer;
    var 
      suma,indice:Integer;
    begin
      suma:=0;
      for indice:= 1 to maximo  do
          suma:= suma + m[indice,indice];
      traza:= suma;
    end;

begin
  WriteLn('Ingrese matriz');
  for i:= 1 to n  do
    begin
      WriteLn('Ingrese fila ',i); 
      for j:= 1 to n  do
        begin 
          readLn(matriz[i,j]);
        end;
    end;
  muestra(matriz,n);
  WriteLn('La traza es: ', traza(matriz,n));
end.