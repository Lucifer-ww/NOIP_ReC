var
 f,h:array[0..30000] of longint;
 a,b:array[0..1000] of longint;
 i,j,k,l,m,n:longint;
begin
  readln(m,n);
  for i:=1 to n do
     readln(a[i],b[i]);
  for i:=1 to n do
   for j:=m downto a[i] do
    if f[j]<(f[j-a[i]]+a[i]*b[i]) then
     begin
      f[j]:=f[j-a[i]]+a[i]*b[i];
     end;
   writeln(f[m]);
   readln;
end.
