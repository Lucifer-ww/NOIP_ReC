var
  i,j,m,n:longint;
  w:array[1..20000] of longint;
  f:array[0..20000] of longint;
begin
  readln(m);
  readln(n);
  for i:=1 to n do readln(w[i]);
  for i:=1 to n do
   for j:=m downto w[i] do
    if f[j-w[i]]+w[i]>f[j] then f[j]:=f[j-w[i]]+w[i];
  writeln(m-f[m]);
end.
