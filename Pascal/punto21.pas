program punto21;
 
  var 
    pCapicua,pNormal: String;
{
  function esCapicua(palabra:String):boolean;
    var 
      ini,fin:Integer;
      flag:boolean;

    begin
      flag := true;
      ini := 0;
      fin := Length(palabra);
      while (flag and ( ini <> fin) and (ini > fin)) do
      begin
        WriteLn(palabra[ini],' ',palabra[fin]);
        if palabra[ini] <> palabra[fin] then
          begin
          flag := false;
          end;
        ini:= ini + 1;
        fin:= fin - 1;
      end;
      esCapicua:= flag;
    end;
}

   procedure esCapicua(palabra:String);
    var 
      ini,fin:Integer;
      flag:boolean;

    begin
      flag := true;
      ini := 1;
      fin := Length(palabra);
      while flag and (( ini <> fin) and (ini < fin)) do
      begin
        WriteLn(palabra[ini],' ',palabra[fin]);
        if palabra[ini] = palabra[fin] then begin
            ini:= ini + 1;
            fin:= fin - 1;
          end
          else begin
            flag := false;
          end;
      end;
      writeln(flag);
    end;
begin
  pCapicua:= 'somos';
  pNormal:= 'hola';
  WriteLn(pCapicua, ' es capicua?: ');
  esCapicua(pCapicua);
  WriteLn(pNormal, ' es capicua?: ');
  esCapicua(pNormal);
end.
