var
  a,b,x,l:array[1..1000]of longint;
  k,i,j,p,n,s,t,h:longint;

begin
  read(n);
  for i:=1 to n do
  begin
   read(a[i]);
   read(b[i]);
  end;
  for i:=1 to n-1 do
   begin
    for s:=i+1 to n do
      if (a[i]>a[s]) or (a[i]=a[s]) and (b[i]>b[s])then
      begin
        t:=b[i];b[i]:=b[s];b[s]:=t;
        t:=a[i];a[i]:=a[s];a[s]:=t;
      end;
    end;
  k:=1;l[1]:=b[1];
  for i:=2 to n do
  begin
    p:=0;
    for j:=1 to k do
    if (l[j]<=b[i]) then
      if p=0 then p:=j
      else if l[j]>l[p] then p:=j;
    if p=0 then begin k:=k+1;l[k]:=b[i];end
  else l[p]:=b[i];
  end;
  write(k);

end.