var
  i,j,k,l,m,n:integer;
  a,b:array[0..10000]of integer;

begin
  assign(input,'train.in'); reset(input);
  assign(output,'train.out'); rewrite(output);
  readln(n);
  for i:=1 to n do
  read(a[i]);
  for i:=1 to n do
  begin
    while (b[k]<>a[i]) and (k<n+1) do
    begin
      inc(k);
      inc(l);
      b[k]:=l;
    end;
    dec(k);
  end;
  if k=0 then writeln('YES')
  else writeln('NO');
  close(input); close(output);
end.