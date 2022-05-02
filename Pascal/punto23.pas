program punto23;

{Use val() prcedure to convert a string to int}
var 
  numA,numB,flag:Integer;
  operador,cadenaUsuario:String;

procedure separaString(var A,B:Integer;var operador:String; cadena:String; var flag:Integer);
  var 
    cadA,cadB,op:String[10];
    i,j,longitud,error:Integer;
  begin
    {se separan los string}
    longitud:= Length(cadena);
    i:=1;
    j:=1;

    while(cadena[i] <> ' ') and (i < longitud ) do;
      begin
        cadA[i] := cadena[i];
        i:= i+1;
        WriteLn(cadA, i);
      end;

    repeat
      i := i + 1; 
      op[j]:=cadena[i];
      j := j + 1;
    until (cadena[i] = ' ') or (i > longitud);
    operador := op;
    j:=1;

    while(i < longitud) do;
      begin
        cadB[j] := cadena[i];
        i:= i+1;
        j:= j+1;
      end;
    WriteLn(cadB);
    {se le asigna valor numerico con val() y se setea la flag si es que hubo algun error}

    val(cadA,A,error);
    if error <> 0 then 
      begin 
        WriteLn('No se reconoce variable A');
        flag := -1;
      end;
    val(cadB,B,error);
    if error <> 0 then 
      begin
        WriteLn('No se reconoce variable B');
        flag := -1;
      end;
  end;

procedure hacerOperacion(numA,numB:Integer; operador:String);
  var
    flag:Integer;
    resultado:Double;
  begin
  flag:= 0;
    case operador of
      'menos': resultado := numA - numB;
      'mas': resultado := numA + numB;
      'por': resultado := numA * numB;
      'dividido': resultado := numA / numB;
      else flag := -1;
    end;

    if flag <> 0 then
    begin
      WriteLn('No se pudo comprender el operador');
    end
    else
    begin
      WriteLn(numA,' ',operador,' es igual a ',resultado);
    end;
end;

begin
  Writeln('Ingrese operacion a realizar');
  ReadLn(cadenaUsuario);
  separaString(numA,numB,operador,cadenaUsuario,flag);
  if flag = -1 then
    begin
      WriteLn('No se puede realizar la operacion');
    end
  else
    begin
      hacerOperacion(numA,numB,operador);
    end;

end.