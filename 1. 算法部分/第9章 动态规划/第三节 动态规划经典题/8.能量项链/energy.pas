var
  n,i,j,k:longint;
  max:int64;
  a:array[-10..maxint] of int64;
  f:array[1..1000,1..1000] of int64;
begin
  assign(input,'energy.in');reset(input);
  assign(output,'energy.out');rewrite(output);

  readln(n);
  for i:=1 to n do
  begin
    read(a[i]);
    a[n+i]:=a[i];
  end;
  for i:=2*n-1 downto 1 do
    for j:=i+1 to 2*n do
      for k:=i to j-1 do
        if f[i,k]+f[k+1,j]+a[i]*a[k+1]*a[j+1]>f[i,j] then
        begin
          f[i,j]:=f[i,k]+f[k+1,j]+a[i]*a[k+1]*a[j+1] ;
          if f[i,j]>max then max:=f[i,j];
        end;
   writeln(max div 2);

   close(input);close(output);
end.


