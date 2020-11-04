program jj;
var la,lb,lc,x,i,j : longint;
    a,b,c : array [1..1000] of longint;
    n,m : string;
begin
  assign(input,'multiply.in');
  assign(output,'multiply.out');
  reset(input);  rewrite(output);
  readln(n);  readln(m);
  la := length(n);  lb := length(m);
  for i := 1 to la do a[la-i+1] := ord(n[i])-48;
  for i := 1 to lb do b[lb-i+1] := ord(m[i])-48;
  for i := 1 to la do
  begin
    x : =0;
    for j := 1 to lb do
    begin
      x := a[i]*b[j]+x div 10+c[i+j-1];
      c[i+j-1] := x mod 10;
    end;
    c[i+j] := x div 10;
  end;
  lc := i+j;
  while (c[lc]=0) and (lc>1) do lc := lc-1;
  for i := lc downto 1 do
  write(c[i]);
  writeln;
  close(input);  close(output);
end.
