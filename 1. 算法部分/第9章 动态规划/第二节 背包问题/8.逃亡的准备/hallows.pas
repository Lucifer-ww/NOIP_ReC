program skyline;
var
  a,b,aa,bb,c:array[1..2000]of longint;
  f:array[0..500]of longint;
  n,v,i,j,k,n1,n2,m,w,s:longint;
begin
  assign(input,'hallows.in');reset(input);
  assign(output,'hallows.out');rewrite(output);
  readln(n,v);
  for i:=1 to n do
  begin
  readln(m,w,s);
  if m*w<v then begin
     inc(n1);
     a[n1]:=w;b[n1]:=s;c[n1]:=m;
     end   else begin
     inc(n2);
     aa[n2]:=w;bb[n2]:=s;
     end;
  end;
  for i:=1 to n1 do
   for j:=v downto 0 do
    for k:=1 to c[i] do
    if (j>=a[i]*k)and(f[j-a[i]*k]+b[i]*k>f[j]) then f[j]:=f[j-a[i]*k]+b[i]*k;
  for i:=1 to n2 do
   for j:=aa[i] to v do
   if f[j-aa[i]]+bb[i]>f[j] then f[j]:=f[j-aa[i]]+bb[i];
  writeln(f[v]);
  close(input);close(output);
end.