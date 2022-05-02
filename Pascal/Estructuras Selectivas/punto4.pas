program punto4;
var num: Real;

function mayor(x:Real):boolean;
    begin
        if x > 0 then
          begin
          mayor:= true;
          end
        else
          begin
          mayor:= false;
          end;
    end;

begin
  writeLn('Ingrese numero');
  read(num);
  if num = 0 then
    WriteLn(num,' es igual a 0')
  else
    writeln(num,' es mayor a 0 ', mayor(num));
end.