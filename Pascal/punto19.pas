program punto19;

const
  max = 3;


var 
  vectorA,vectorB : array [1 .. max] of Integer;  
  indice:Integer;


  procedure muestra(vector:array of integer;maximo:integer);
    begin
      for indice:= 0 to maximo-1 do
        begin 
          Write('[',vector[indice],'] ');
        end;
        WriteLn();
    end;


  procedure vectorSuma(vector1,vector2: Array of integer; maximo: Integer);
    begin
      for indice:= 0 to maximo-1 do
        begin 
          vector1[indice] := vector1[indice] + vector2[indice];
        end;
      WriteLn('El vector suma es: ');
      muestra(vector1,maximo);
    end;

  procedure productoEscalar(vector1,vector2: Array of integer; maximo: Integer);
    var 
      productoEscalar:Integer;
    begin
      productoEscalar := 0;
      for indice := 0 to maximo-1 do
        begin
          productoEscalar := productoEscalar + (vector1[indice] * vector2[indice]);
        end;
      WriteLn('El producto escalar es: ', productoEscalar);
    end;

begin
  {Se llenan los vectores}
  WriteLn('Ingrese vector');
  for indice:=1 to max do
    readLn(vectorA[indice]);

  WriteLn('Ingrese vector');
  for indice:=1 to max do
    readLn(vectorB[indice]);
  
  vectorSuma(vectorA,vectorB,max);
  productoEscalar(vectorA,vectorB,max);

end.


