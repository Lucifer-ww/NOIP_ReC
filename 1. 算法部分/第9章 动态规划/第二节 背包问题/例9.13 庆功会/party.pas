program party;
var
   v,w,s,f:array[0..6001]of longint;
   i,j,k,n,m:longint;
function max(a,b:longint):longint;
begin
  if a>b then exit(a)
   else exit(b);
end;
begin
  readln(n,m);
  for i:=1 to n do
    readln(v[i],w[i],s[i]);
  for i:=1 to n do
    for k:=1 to s[i] do
      for j:=m downto v[i] do
        begin
          f[j]:=max(f[j],f[j-v[i]]+w[i]);
        end;
  writeln(f[m]);
  readln;
end.
