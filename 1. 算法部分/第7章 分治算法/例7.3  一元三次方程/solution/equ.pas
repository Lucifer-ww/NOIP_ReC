var i:longint;
    a,b,c,d,x:extended;

function f(x:extended):extended;
begin
     f:=a*x*x*x+b*x*x+c*x+d
end;

begin
     assign(input,'equ.in');
     assign(output,'equ.out');
     reset(input);
     rewrite(output);
     readln(a,b,c,d);
     x:=-100-0.001;
     for i:=1 to 3 do
     begin
          repeat
                x:=x+0.001
          until abs(f(x))<1e-8;
          if i=3 then write(x:0:2) else write(x:0:2,' ');
          x:=x+0.99
     end;
     close(Input);
     close(output);
end.
