program punto6;
var a,b:Integer;

procedure leeVariables(var a,b:Integer);
    begin
        WriteLn('Ingrese numero a');
        read(a);
        WriteLn('Ingrese numero b');
        read(b);
    end;

procedure division (x,y:integer);
begin
  if y = 0 then
        begin
            WriteLn('ERROR no se puede dividir por 0');
        end
    else
        begin
            WriteLn(x,' / ',y,' = ', x div y);
        end;
end;

procedure opciones(x,y:Integer);
var opcion:Integer;
begin
  WriteLn('1) Suma, 2) Resta, 3)Producto, 4)Division');
  Read(opcion);
  case opcion of
    1 : WriteLn(x,' + ',y,' = ', x + y);
    2 : WriteLn(x,' - ',y,' = ', x - y);
    3 : WriteLn(x,' * ',y,' = ', x * y);
    4 : division(x,y);
  else
    writeLn('Error de entrada');
  end;
end;

begin
  leeVariables(a,b);
  opciones(a,b);
end.