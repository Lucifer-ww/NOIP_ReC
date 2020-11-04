Program black;
var i,j,n,m:longint;
    w,c,a:array[0..200] of longint;
begin
   assign(input,'package.in');
   assign(output,'package.out');
   reset(input);
   rewrite(output);
    readln(m,n);
    for i:=1 to n do
    readln(w[i],c[i]);
    for i:=1 to n do
      for j:=m downto 0 do
        if j-w[i]>=0 then
          if a[j-w[i]]+c[i]>a[j] then a[j]:=a[j-w[i]]+c[i];
    writeln(a[m]);
   close(input);
   close(output);
end.