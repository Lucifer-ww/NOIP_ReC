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
  for x:=-10000 to 10000 do
   begin
     x1:=(x-0.05)/100;
     x2:=(x+0.005)/100;
     if (f(x1)*f(x2)<0)or(f(x1)=0) then
       begin
         write(x/100:0:2,' ');
       end;
   end;
  close(input);close(output);
END.
