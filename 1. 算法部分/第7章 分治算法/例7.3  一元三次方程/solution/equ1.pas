var a,b,b2,c,c2,d,x,x1,x2:extended;

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
     repeat
           x:=random(10000)/100
     until abs(f(x))<=0.000001;
     b2:=-b/a-x;
     c2:=c/a-b2*x;
     x1:=(b2-sqrt(b2*b2-4*c2))/2;
     x2:=(b2+sqrt(b2*b2-4*c2))/2;
     if x<x1
        then writeln(x:0:2,' ',x1:0:2,' ',x2:0:2)
        else if x<x2
                then writeln(x1:0:2,' ',x:0:2,' ',x2:0:2)
                else writeln(x1:0:2,' ',x2:0:2,' ',x:0:2);
     close(Input);
     close(output);
end.
