var max,len,n,macv,madv,tak,sum,tata:int64; i,j:longint;
   w,v:array[0..2000]of int64;
   f:array[0..2000]of extended;
function min(a,b:extended):extended;
begin
  if a<b then exit(a); exit(b);
end;
begin
  readln(max,len,n);
  for i:=1 to n do
  f[i]:=maxlongint;
  for i:=1 to n do
    readln(w[i],v[i]);
  macv:=maxlongint;
  for i:=1 to n do begin
    sum:=sum+w[i];
    if sum<=max then begin
      if v[i]<macv then macv:=v[i];
      f[i]:=len/macv+f[tata];
    end;
    if sum>max then begin
      tak:=0;
      madv:=maxlongint;
      macv:=maxlongint;
      tata:=i;
      for j:=i downto 1 do begin
        tak:=tak+w[j];
        if tak>max then break;
        if v[j]<madv then madv:=v[j];
        f[i]:=min(f[i],f[j-1]+len/madv);
      end;
    end;
  end;
  writeln(f[n]*60:0:1);
end.