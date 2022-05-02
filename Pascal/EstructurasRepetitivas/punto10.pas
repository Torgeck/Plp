program punto10;
var a,b:Integer;

procedure multiplicar(a,b:Integer);
var c, cont:Integer;

begin
  c:= 0;
  for cont:=1 to b do
    c:= c + a;
  WriteLn(a,' * ',b,' = ',c);

end;

begin
  read(a);
  read(b);
  multiplicar(a,b);
end.


