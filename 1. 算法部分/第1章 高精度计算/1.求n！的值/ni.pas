var
  i,j,n,w : longint;
  a : array[1..1000] of integer;

procedure fact(k : longint);
var
  x,i : longint;
begin
  x := 0;
  for i := 1 to w do
  begin
    a[i] := a[i]*k+x;
    x := a[i] div 10;
    a[i] := a[i] mod 10;
  end;
  while x>0 DO
  begin
    w := w+1;
    a[w] := x mod 10;
    x := x div 10;
  end;
end;

begin
  assign(input,'ni.in');  reset(input);
  assign(output,'ni.out');  rewrite(output);
  a[1] := 1;
  w := 1;
  readln(n);
  for i := 1 to n do fact(i);
  for j := w downto 1 do write(a[j]);
  writeln;
  close(input);  close(output);
end.
