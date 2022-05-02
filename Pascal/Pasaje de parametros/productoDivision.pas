program productoDivision;
var a,b:Integer;

procedure lecturaValores(var x,y:integer);
begin
    Writeln('Ingrese un valor para a');
    Read(x);
    Writeln('Ingrese un valor para b');
    Read(y);
end;

procedure producto (x,y:integer);
begin
  WriteLn(x,' * ',y,' = ', x * y);
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

begin 
    lecturaValores(a,b); {Lectura de los valores ingresados, son modificados globalmente}
    producto(a,b);
    division(a,b);
end.