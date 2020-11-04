var
  p,r,n,x,i,j,k1,k2:longint;
  c,w1,w2,s:array[0..150]of longint;
  f:array[0..150,0..150]of longint;
function max(a,b:longint):longint;
begin
  if a>b then exit(a) else exit(b);
end;

begin
  readln(n,p,r);
  for i:=1 to n do
    readln(w1[i],w2[i],s[i],c[i]);
  f[0,0]:=0;
  for i:=1 to n do
    if s[i]=0 then
     begin
      for j:=w1[i] to p do
        for x:=w2[i] to r do
          f[j,x]:=max(f[j,x],f[j-w1[i],x-w2[i]]+c[i]);
     end
    else
     begin
      for j:=1 to s[i] do
        for k1:=p downto w1[i]do
          for k2:=r downto w2[i] do
            f[k1,k2]:=max(f[k1,k2],f[k1-w1[i],k2-w2[i]]+c[i]);
      end;
  writeln(f[p,r]);
  readln;
end.

