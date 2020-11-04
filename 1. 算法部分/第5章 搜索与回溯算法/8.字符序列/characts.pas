var  a:array [-5..1000] of char;
     n,k,total:longint;
procedure  print;
var j:integer;
begin
  for j:=1 to n do write(a[j],' ');
  total:=total+1;
  writeln;
end;
procedure  try(k:integer);
var  i:char;
begin
  for i:='A' to 'C' do
   if (i<>a[k-2])or(a[k-1]<>a[k-3]) then
    begin
     a[k]:=i;
     if k=n then print
     else try(k+1);
  end;
end;
begin
  assign(input,'characts.in');
  assign(output,'characts.out');
  reset(input);
  rewrite(output);
  readln(n);
  total:=0;
  try(1);
  writeln(total);
  close(input); close(output);
end.
