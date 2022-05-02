program punto15;

var
  texto:String;
  vocal:Char;

function vocalMasUsada(sentencia:String):Char;
var 
  arrVocales: Array ['a','e','i','o','u'] of Integer;
  charActual: char;
  indice: Integer;

begin
  indice:= 1;
  repeat
    charActual := sentencia[indice];

    case charActual of
      'A','a': arrVocales['a'] = succ(arrVocales['a']);
      'e','E': arrVocales['e'] = succ(arrVocales['e']);
      'i','I': arrVocales['i'] = succ(arrVocales['i']);
      'o','O': arrVocales['o'] = succ(arrVocales['o']);
      'u','U': arrVocales['u'] = succ(arrVocales['u']);
      else
      end;

    indice:= indice + 1;
  until charActual = '.';

  vocalMasUsada := 

end;

begin
  
end.
