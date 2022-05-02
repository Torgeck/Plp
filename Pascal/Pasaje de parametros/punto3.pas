program punto3;
var radio,superficie,volumen:Double;

procedure calculosSV(r:Double; var s,v:Double);
    begin
        s:= 4 * Pi * Sqr(r); 
        v:= (4/3)* Pi * Sqr(r)*r;
    end;

begin
  WriteLn(' Ingrese un radio ');
  read(radio);
  calculosSV(radio,superficie,volumen);
  writeLn(' Radio: ',radio);
  WriteLn(' Volumen: ',volumen);
  WriteLn(' Superficie: ',superficie);
end.