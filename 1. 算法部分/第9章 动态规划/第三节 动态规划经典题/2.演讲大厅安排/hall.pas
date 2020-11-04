program black;
var
  f:array[-1..30000]of longint;
  max,i,j,m,n:longint;
  a,b,c:array[0..5001]of longint;

begin
  assign(input,'hall.in');reset(input);
  assign(output,'hall.out');rewrite(output);
  readln(n);
  for i:=1 to n do
    begin
      readln(a[i],b[i]);
      c[i]:=b[i]-a[i];
      if b[i]>max then
        max:=b[i];
    end;

  for i:=0 to max do
    begin
      f[i]:=f[i-1];
      for j:=1 to n do
        if b[j]=i then
          if f[a[j]]+c[j]>f[i] then
            f[i]:=f[a[j]]+c[j];
    end;
  writeln(f[max]);
  close(input);close(output);
end.