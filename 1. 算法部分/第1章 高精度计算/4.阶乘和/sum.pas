program jiecheng(input,output);
const max=10000;
var i,j,n : integer;
    sum,fac : array[1..max+1] of integer;
begin
  assign(input,'sum.in');  assign(output,'sum.out');
  reset(input);  rewrite(output);
  read(n);
  for i := 1 to max do sum[i] := 0;
  for i := 1 to max do fac[i] := 0;
  fac[1] := 1;
  for i := 1 to n do
  begin
    for j := 1 to max do fac[j] := fac[j]*i;
    for j := 1 to max do
    begin
      fac[j+1] := fac[j+1]+fac[j] div 10;
      fac[j] := fac[j] mod 10;
    end;
    for j := 1 to max do sum[j] := sum[j]+fac[j];
    for j := 1 to max do
    begin
      sum[j+1] := sum[j+1]+sum[j] div 10;
      sum[j] := sum[j] mod 10;
    end;
  end;
  i := max;
  while sum[i]=0 do i := i-1;
  for j := i downto 1 do write(sum[j]);
  writeln;
  close(input);  close(output);
end.