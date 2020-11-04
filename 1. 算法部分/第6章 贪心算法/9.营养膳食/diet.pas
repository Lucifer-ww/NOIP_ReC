var
  kindmax,ai,bi:array[1..300] of longint;
  n,m,k,sum,i,e:longint;
procedure qp(l,r:longint);
var i,j,x,y: longint;
begin
  i:=l; j:=r; x:=ai[(l+r) div 2];
  repeat
   while   ai[i]<x do inc(i);
   while   x<ai[j] do dec(j);
   if i<=j then
   begin
    y:=ai[i]; ai[i]:=ai[j]; ai[j]:=y;
    y:=bi[i]; bi[i]:=bi[j]; bi[j]:=y;
    inc(i); dec(j);
   end;
  until i>j;
  if l<j then qp(l,j);
  if i<r then qp(i,r);
end;

begin
  assign(input,'diet.in'); reset(input);
  assign(output,'diet.out'); rewrite(output);
  readln(n,m,k);
  for i:=1 to k do
  begin
  if i<=k-1 then read(kindmax[i])
   else readln(kindmax[i]);
  end;
  for i:=1 to n do begin read(ai[i]); readln(bi[i]); end;
  qp(1,n);
  e:=n;
  while m>0 do
  begin
    if kindmax[bi[e]]>0 then
    begin
     sum:=sum+ai[e]; dec(kindmax[bi[e]]);
    end;
    dec(e);
    dec(m);
  end;
  writeln(sum);
  close(input); close(output);
end.
