var c,a,f:Array[0..2000]of longint;
i,j,k,ans:longint;
begin
  assign(input,'weight.in'); reset(input);
  assign(output,'weight.out'); rewrite(output);
  for i:=1 to 6 do read(a[i]);
  c[1]:=1;
  c[2]:=2;
  c[3]:=3;
  c[4]:=5;
  c[5]:=10;
  c[6]:=20;
  f[0]:=1;
  for i:=1 to 6 do
    for k:=1 to a[i] do
      for j:=1000 downto c[i] do if f[j-c[i]]=1 then f[j]:=1;
  for i:=1 to 1000 do if f[i]=1 then inc(ans);
  writeln('Total=',ans);
  close(output);
end.