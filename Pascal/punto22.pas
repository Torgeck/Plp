program punto22;

const
  cantidadNombres = 9;

var
  listaNombres: array [0 .. cantidadNombres] of String;

procedure agregarNombre(var listaNombres: array of String; n:Integer);
  var
    i:Integer;
  begin
    for i:= 0 to n do begin
       WriteLn('Ingrese nombre');
       ReadLn(listaNombres[i]);
    end;
  end;

procedure ordenarLista(var lista: array of String; n:Integer);
{BubbleSort --}
var 
  temp: String;
  i,j: Integer;

begin
  for i:= 0 to n - 1 do begin
    for j:=0 to n - i - 1 do begin
      {condicion para intercambiar}
      if (lista[j] > lista[j+1]) then
        begin
          {Se intercambian los valores}
          temp := lista[j];
          lista[j]:= lista[j+1];
          lista[j+1]:= temp;
        end;
    end;
  end;
end;

procedure mostrarLista(lista: array of String;n:Integer);
var
  i:Integer;
begin
  for i:= 0 to n do 
    writeLn(lista[i]);
end;

begin
  agregarNombre(listaNombres,cantidadNombres);
  mostrarLista(listaNombres,cantidadNombres);
  WriteLn('---------------------------------------------');
  ordenarLista(listaNombres,cantidadNombres);
  mostrarLista(listaNombres,cantidadNombres);
  WriteLn('---------------------------------------------');
end.