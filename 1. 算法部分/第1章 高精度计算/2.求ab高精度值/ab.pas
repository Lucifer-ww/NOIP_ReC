var
  a,b,i,k,len : integer;
  m : array[1..20] of integer;
begin
  assign(input,'ab.in');  reset(input);
  assign(output,'ab.out');  rewrite(output);
  read(a,b);
  write(a,'/',b,'=',a div b,'.');
  k := a mod b;
  for i := 1 to 20 do
  begin
    m[i] := 10*k div b;
    k := 10*k mod b;
  end;
  len := 20;
  while (m[len]=0)and(len>1) do dec(len);
  for i:=1 to len do
     write(m[i]);
  writeln;
  close(input);  close(output);
end.
