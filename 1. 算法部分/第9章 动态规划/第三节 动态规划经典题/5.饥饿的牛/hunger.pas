program star;
var i,j,k,n,max:longint;
    f:array[0..2000]of longint;
    a,b,c:array[1..1000]of longint;
begin
  assign(input,'hunger.in');  reset(input);
  assign(output,'hunger.out');rewrite(output);
  readln(n);
  for i:=1 to n do
    begin
      readln(a[i],b[i]);
      c[i]:=b[i]-a[i]+1;
      if b[i]>max then max:=b[i];
    end;
  for i:=1 to max do
    begin
      f[i]:=f[i-1];
      for j:=1 to n do
        if b[j]=i then
          if f[a[j]-1]+c[j]>f[i] then f[i]:=f[a[j]-1]+c[j];
    end;
  writeln(f[max]);
  close(input); close(output);
end.
