program gpopo;
var i,j,n,x:integer;
  a:array[1..100,1..100]of integer;
  b,c:array[1..100]of integer;
begin
  assign(input,'short.in');
  assign(output,'short.out');
  reset(input);
  rewrite(output);
  read(n);
  for i:=1 to n do
    for j:=1 to n do
      read(a[i,j]);
  for i:=1 to n-1 do b[i]:=maxint;
  b[n]:=0;
  for i:=n-1 downto 1 do
    for j:=n downto i+1 do
      if (a[i,j]>0)and(b[j]<>maxint)and(b[j]+a[i,j]<b[i])
        then
          begin
            b[i]:=b[j]+a[i,j];
            c[i]:=j;
          end;
  writeln('minglong=',b[1]);
  x:=1;
  while x<>0 do
    begin
      write(x,' ');
      x:=c[x];
    end;
  close(input);
  close(output);
end.
