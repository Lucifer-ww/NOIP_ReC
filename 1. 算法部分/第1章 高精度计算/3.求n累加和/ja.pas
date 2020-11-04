program ex3;
var
  i,w,n : longint;
  a : array[1..100] of longint;

procedure jia(k : longint);
var
  j,x : longint;
begin
  x := a[1]+k;
  w := 0;
  while x>0 do
  begin
    w := w+1;
    a[w] := x mod 10;
    x := a[w+1]+x div 10;
   end;
end;

begin
  assign(input,'ja.in');  reset(input);
  assign(output,'ja.out');  rewrite(output);
  readln(n);
  w := 1;
  for i := 1 to n do jia(i);
  for i := w downto 1 do write(a[i]);
  writeln;
  close(input);  close(output);
end.
