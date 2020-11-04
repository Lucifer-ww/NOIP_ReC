var
  n,i:longint;
  a:array[1..20000]of int64;
  x,k:int64;
procedure  adjust(i1:int64);
var
  tem,p:int64;
begin
  while i1<=n div 2 do
  begin
    p:=i1*2;
    if (p+1<=n)and (a[p]<a[p+1]) then inc(p);
    if a[i1]<a[p] then
    begin
      tem:=a[i1];
      a[i1]:=a[p];
      a[p]:=tem;
      i1:=p;
    end
    else
    break;
  end;
end;

begin
  assign(input,'trans.in'); reset(input);
  assign(output,'trans.out'); rewrite(output);
  readln(n,k);
  for i:= 1 to n do
    read(a[i]);
  for i:= n div 2 downto 1 do
  adjust(i);
  while n<>1 do
  begin
    x:=a[1];
    a[1]:=a[n];
    dec(n);
    adjust(1);
    a[1]:=(a[1]+x) div k;
    adjust(1);
  end;
  writeln(a[1]);
  close(input);
  close(output);
end.
