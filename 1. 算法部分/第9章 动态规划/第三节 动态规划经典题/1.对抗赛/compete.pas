program compete;
var
  n,i,j,k,s:longint;
  a:array[1..50] of longint;
  f:array[0..5000] of longint;
begin
  assign(input,'compete.in');    reset(input);
  assign(output,'compete.out');  rewrite(output);
  f[0]:=1;
  readln(n);
  for i:=1 to n do
   begin
      read(a[i]); s:=s+a[i];
   end;
  readln;
  for i:=1 to s do f[i]:=0;
  for i:=1 to n do
    for j:=s div 2 downto a[i] do
      f[j]:=f[j]+f[j-a[i]];
  if odd(s) then writeln(0)
            else writeln(f[s div 2] div 2);
  close(input);  close(output);
end.
