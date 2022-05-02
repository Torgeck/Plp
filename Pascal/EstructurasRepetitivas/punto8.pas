program punto8;
var a,b:Integer;

procedure intercambio(var x,y:Integer);
var aux:Integer;
begin
    aux:= x;
    x:= y;
    y:= aux;
end;

begin
  read(a);
  read(b);
  WriteLn(a,' ',b);
  intercambio(a,b);
  WriteLn(a,' ',b);
end.