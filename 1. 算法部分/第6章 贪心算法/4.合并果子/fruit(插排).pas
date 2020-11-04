var
  a:array[1..20000]of longint;
  i,n,t,m,j,s,k:longint;
procedure qsort(l,r:longint);
var
  i,j,mid,p:longint;
begin
  i:=l;j:=r;
  mid:=a[(l+r) div 2];
  repeat
    while a[i]<mid do inc(i);
    while a[j]>mid do dec(j);
    if i<=j then
    begin
      p:=a[i];a[i]:=a[j];a[j]:=p;
      inc(i);dec(j);
    end;
  until i>j;
  if l<j then qsort(l,j);
  if i<r then qsort(i,r);
end;
begin
  read(n);
  for i:=1 to n do
  read(a[i]);
  qsort(1,n);
  for i:=1 to n-1 do
  begin
   j:=i+1;
   t:=a[i]+a[i+1];
   m:=m+t;

   while (t>a[j]) and (j<=n) do
   begin
     a[j-1]:=a[j];
     j:=j+1;
   end;
   a[j-1]:=t;
 end;
  write(m);
end.
