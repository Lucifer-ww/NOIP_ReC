program skyline;
var
  w,c,t:array[1..10000]of longint;
  f:array[0..100]of longint;
  num:array[1..100,1..100]of longint;
  n,m,ti,a,i,j,k,tot,time:longint;
begin
  assign(input,'manor.in');reset(input);
  assign(output,'manor.out');rewrite(output);
  readln(n,m,ti,a);
  dec(a);
  if ti<a then a:=ti;
  for i:=1 to n do
   for j:=1 to m do
   read(num[i,j]);
  for i:=1 to n do
   for j:=1 to m do
   begin
   read(time);
   if (num[i,j]>0)and(time>0) then begin
      inc(tot);
      w[tot]:=(i+j)*2;
      c[tot]:=num[i,j];
      t[tot]:=time;
      end;
   end;
  for i:=1 to tot do
   for j:=a downto w[i] do
    for k:=1 to t[i] do
   if (j>=w[i]*k)and(f[j-w[i]*k]+c[i]*k>f[j]) then f[j]:=f[j-w[i]*k]+c[i]*k;
  writeln(f[a]);
  close(input);close(output);
end.