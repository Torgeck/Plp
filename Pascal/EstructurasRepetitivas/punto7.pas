program punto7;
    var num,contador:Integer;
    const cant = 20;

begin
  writeLn('Ingrese un numero');
  read(num);
  
  for contador:=0 to cant do
    begin
      write(num,', ');
      num := num+1;
    end;
end.