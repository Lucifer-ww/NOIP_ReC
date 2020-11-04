var
  n,m,i,j,x:longint;
  f,s,t:array[0..100000]of longint;
begin
  readln(m,n);
  for i:=1 to n do
  readln(t[i],s[i]);
  for i:=1 to n do
    for j:=s[i] to m do
      if f[j-s[i]]+t[i]>f[j] then f[j]:=f[j-s[i]]+t[i];
  writeln(f[m]);
end.
