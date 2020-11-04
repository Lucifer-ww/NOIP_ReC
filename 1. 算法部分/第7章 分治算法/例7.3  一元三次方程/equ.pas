program equ;
var
  x:integer;
  a,b,c,d,x1,x2,xx:real;

 function f(x:real):real;
  begin
    f:=a*x*x*x+b*x*x+c*x+d;
  end;

BEGIN
  assign(input,'equ.in');reset(input);
  assign(output,'equ.out');rewrite(output);
  read(a,b,c,d);
  for x:=-100 to 100 do
   begin
     x1:=x;
     x2:=x+1;
     if f(x1)=0 then write(x1:0:2,' ')
     else if f(x1)*f(x2)<0 then
           begin
             while x2-x1>0.01 do
              begin
                xx:=(x1+x2)/2;
                if f(x1)*f(xx)<0 then x2:=xx
                                 else x1:=xx;
              end;
              write((x1+x2)/2:0:2,' ');
           end;
   end;
  close(input);close(output);
END.
