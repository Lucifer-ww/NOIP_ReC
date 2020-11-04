var w,c,f:array[0..1000] of longint;
  i,j,m,n:longint;
begin
  readln(m,n);
  for i:=1 to n do readln(w[i],c[i]);
  for i:=1 to n do
    for j:=m downto w[i] do
      if f[j-w[i]]+c[i]>f[j] then
        f[j]:=f[j-w[i]]+c[i];
  writeln(f[m]);
end.

