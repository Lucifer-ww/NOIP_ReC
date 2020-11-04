var n,m,w,c,i,j:longint;
   f:array[0..100000]of longint;
begin
  assign(input,'happy.in'); reset(input);
  assign(output,'happy.out'); rewrite(output);
  readln(n,m);
  for i:=1 to m do 
  begin
    readln(w,c);
    c:=c*w;
    for j:= n downto w do
    if f[j-w]+c>f[j] then f[j]:=f[j-w]+c;
  end;
  for i:=2 to n do
    if f[i]>f[1] then f[1]:=f[i];
  writeln(f[1]);
  close(output);
end.
