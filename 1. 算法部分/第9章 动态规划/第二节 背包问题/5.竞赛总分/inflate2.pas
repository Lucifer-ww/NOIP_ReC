var
  s,t:array[0..10000] of longint;
  f:array[0..2000,0..10000] of longint;
  i,j,m,n:longint;
begin
  readln(m,n);
  for i:=1 to n do readln(s[i],t[i]);
  for i:=1 to n do
    for j:=1 to m do
      if j<t[i] then f[i,j]:=f[i-1,j]
        else if f[i-1,j]>f[i,j-t[i]]+s[i] then f[i,j]:=f[i-1,j]
          else f[i,j]:=f[i,j-t[i]]+s[i];
  writeln(f[n,m]);
end.
