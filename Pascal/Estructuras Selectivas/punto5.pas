program punto5;
var n,m:Integer;

    function esDivisible(x,y:Integer):boolean;
        begin
            esDivisible := (x mod y) = 0;
        end;

    procedure leeVariables(var a,b:Integer);
        begin
            WriteLn('Ingrese numero a');
            read(a);
            WriteLn('Ingrese numero b');
            read(b);
        end;

    begin
        leeVariables(n,m);
        WriteLn(n, ' es divisible por ',m,' :',esDivisible(n,m));
    end.