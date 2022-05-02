program punto11;
var a:Real;b:Integer;

function expo(x:Real; n:Integer):Real;
var contador:Integer;res:Real;
begin
  res := 1;
  for contador :=1 to n do
    begin
      res := res * x;
    end;
    expo:= res;
end;

begin
  read(a);
  read(b);
  WriteLn(a,' a la ',b,' = ',expo(a,b));
end.