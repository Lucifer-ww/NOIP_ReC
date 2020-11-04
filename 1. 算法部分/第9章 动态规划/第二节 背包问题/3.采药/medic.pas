var t,m,i,j,c,w,max:longint;
   f:array[0..100000]of longint;

begin
  assign(input,'medic.in'); reset(input);
  assign(output,'medic.out'); rewrite(output);
  readln(t,m);
  for i:=1 to m do begin
    readln(w,c);
  for j:=t downto w do
    if f[j-w]+c>f[j] then f[j]:=f[j-w]+c;
  end;
  for i:=1 to t do
  if max<f[i] then max:=f[i];
  writeln(max);
  close(output);
end.