program  convoy;
var  f,b:array [0..1000] of real;
     w,v:array [0..1000] of real;
     m,l,s,t1,t2:real;i,j,n:longint;
begin
  assign(input,'convoy.in');reset(input);
  assign(output,'convoy.out');rewrite(output);
  readln(m,l,n);
  for i:=1 to n do
  begin
    readln(w[i],v[i]);
    b[i]:=60*l/v[i];
  end;
  f[1]:=b[1];f[0]:=0;
  for i:=2 to n do
  begin
    s:=w[i];t1:=b[i];
    f[i]:=f[i-1]+b[i];
    for j:=i-1 downto 1 do
    if s+w[j]<=m then
      begin
        s:=s+w[j];
        if b[j]>t1 then t1:=b[j];
        t2:=f[j-1]+t1;
        if t2<f[i] then f[i]:=t2;
      end 
    else break;
  end;
  writeln(f[n]:0:1);
  close(input);close(output);
end.