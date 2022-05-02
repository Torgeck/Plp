PROGRAM punto1;
Var a,b,c,d,s: integer;
    function alfa(e:integer; var f:integer):integer;
    begin
      e:=1;
      f:=2;
      alfa:= e+f;
    end;
    begin
      b:= 10;
      c:= 20;
      d:= b+c;
      writeLn('D: ',d);
      a := alfa(b,c);
      writeLn('A: ',a,'B: ',b,'C: ',c);
      s:= b+c;
      writeLn('S: ',s);
    end.