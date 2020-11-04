program ex4_1;
var n:integer;
function f(n:integer):real;
begin
  if n=1 then f:=1
         else f:=n*f(n-1);
end;
begin
  //assign(input,'ni.in');reset(input);
  //assign(output,'ni.out');rewrite(output);
  readln(n);
  writeln(n,'!=',f(n):0:0);
  //close(input);close(output);
end.
