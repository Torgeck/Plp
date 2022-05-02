program punto14;
var 
  telegrama: String;
  cantLetras: Integer;

procedure contadorLetras(x:String; var cont: Integer);
var 
  indice:Integer;
  charActual:char;

begin
indice:= 1;

  repeat
    charActual := x[indice];

    if (charActual = '.') or (charActual = ' ') then
      cont := cont + 1;

    indice:= indice + 1;
  until charActual = '.'
end;

begin
  cantLetras:=0;
  telegrama:= 'Esto es un test para palabras anashes.';
  contadorLetras(telegrama,cantLetras);
  WriteLn(telegrama,' [',cantLetras,'] palabras');
end.