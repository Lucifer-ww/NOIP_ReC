program asd;
var
  a,b,c,d,e:array[1..300]of integer;
  i,j,k,l,m,n,f:integer;
begin
  readln(n);
  for i:=1 to n do
  begin
    readln(a[i],b[i],c[i]);
    d[i]:=a[i]+b[i]+c[i];
    e[i]:=i;
  end;
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if(d[i]<d[j])or(d[i]=d[j])and(a[i]<a[j])or(d[i]=d[j])and(a[i]=a[j])and(e[i]>e[j])then
      begin
        m:=d[i]; d[i]:=d[j]; d[j]:=m;
        m:=a[i]; a[i]:=a[j]; a[j]:=m;
        m:=e[i]; e[i]:=e[j]; e[j]:=m;
      end;
  for f:=1 to 5 do
    writeln(e[f],' ',d[f]);
  readln;
end.