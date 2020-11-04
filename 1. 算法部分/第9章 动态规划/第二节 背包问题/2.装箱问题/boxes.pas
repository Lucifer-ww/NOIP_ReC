var f:array[0..20000]of boolean;
    c:array[1..30] of longint;
v,n,i,j,o,max:longint;
begin
  assign(input,'boxes.in'); reset(input);
  assign(output,'boxes.out'); rewrite(output);
  readln(v);
  readln(n);
  for i:=1 to n do
    read(c[i]);
  f[0]:=true;
  for i:=1 to n do
  begin
    for j:=v downto 0 do if (j+c[i]<=v)and(f[j]) then f[j+c[i]]:=true;
  end;
  for j:=0 to v do if f[j] then max:=j;
  writeln(v-max);
  close(input);close(output);
end.
