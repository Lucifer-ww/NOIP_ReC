var
  f:array[0..1000] of longint;
  a:array[1..1000] of longint;
  m,i,v:longint;
begin
  for i:=1 to 10 do read(a[i]);
  readln(m);
  fillchar(f,sizeof(f),$7f);
  f[0]:=0;
  for i:=1 to 10 do
    for v:=i to m do
     if f[v]>f[v-i]+a[i] then f[v]:=f[v-i]+a[i];
  writeln(f[m]);
end.

