program punto9;
var num,suma:Integer;

begin 
  suma:= 0;
  repeat
    Read(num);
    suma := suma + num;
    WriteLn('Numero ingresado: ',num,' Suma parcial: ',suma );
  until num = 0;
end.