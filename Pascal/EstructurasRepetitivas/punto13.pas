program punto13;
const max = 200; min = 0;intervalo = 10;
var celcius,farenheit: Double;

begin
  farenheit:= min;
  while farenheit <= max do
    begin
      celcius := 5/9 * (farenheit - 32);
      WriteLn(Round(celcius),' °C = ',Round(farenheit),' °F');
      farenheit := farenheit + intervalo;
    end;
end.