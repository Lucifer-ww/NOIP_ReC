program skyline;
var
  t,v,g:array[1..380]of longint;
  f:array[0..380,0..380]of longint;
  n,i,j,k,vv,gg:longint;
begin
  assign(input,'pack.in');reset(input);
  assign(output,'pack.out');rewrite(output);
  readln(vv,gg);
  readln(n);
  for i:=1 to n do
  readln(t[i],v[i],g[i]);
  for i:=1 to n do
   for j:=vv downto v[i] do
    for k:=gg downto g[i] do
     if f[j-v[i],k-g[i]]+t[i]>f[j,k] then f[j,k]:=f[j-v[i],k-g[i]]+t[i];
  writeln(f[vv,gg]);
  close(input);close(output);
end.