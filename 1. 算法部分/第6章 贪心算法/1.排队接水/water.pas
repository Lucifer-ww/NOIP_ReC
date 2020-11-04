program water(input,output);
var i,j,k,p,s : longint;
    a : array[1..200,1..2] of longint;
begin
  assign(input,'water0.in');
  assign(output,'water.out');
  reset(input);
  rewrite(output);
  readln(k);
  for i := 1 to k do
    begin read(a[i,1]);  a[i,2] := i;  end;
  for i := 1 to k-1 do
    for j := i+1 to k do
      if a[i,1]>a[j,1] then
      begin
        a[i,1] := a[i,1]+a[j,1];
        a[j,1] := a[i,1]-a[j,1];
        a[i,1] := a[i,1]-a[j,1];
        p := a[i,2];
        a[i,2] := a[j,2];
        a[j,2] := p;
      end;
  for i := 1 to k do
    if i<k then write(a[i,2],' ') else writeln(a[i,2]);
  p := 0;
  s := a[1,1];
  for i := 1 to k do inc(p,a[i,1]*(k-i+1));
  writeln(p/k : 0 : 2);
  close(input);
  close(output)
end.
