var m,n,w,u,i,j:longint;
f:Array[0..100000]of longint;
begin
  assign(input,'inflate.in'); reset(input);
  assign(output,'inflate.out'); rewrite(output);
  readln(m,n);
  for i:=1 to n do 
  begin
    readln(w,u);
    for j:=u to m do if f[j-u]+w>f[j] then f[j]:=f[j-u]+w;
  end;
  for j:=1 to m do if f[j]>f[0] then f[0]:=f[j];
  writeln(f[0]);
  close(output);
end.