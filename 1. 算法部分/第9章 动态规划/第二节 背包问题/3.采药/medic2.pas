var
  m,n,i,v:longint;
  c,w:array[1..100000] of longint;
  f:array[0..1000,0..1000] of longint;

function max(y,h:longint):longint;
begin
  if y>h then max:=y
  else max:=h;
end;

begin
  readln(m,n);
  for i:=1 to n do
    readln(w[i],c[i]);
  for i:=1 to n do
    for v:=1 to m do
    begin
      if v>=w[i] then f[i,v]:=max(f[i-1,v-w[i]]+c[i],f[i-1,v])
        else f[i,v]:=f[i-1,v];
    end;
  writeln(f[n,m]);
end.
