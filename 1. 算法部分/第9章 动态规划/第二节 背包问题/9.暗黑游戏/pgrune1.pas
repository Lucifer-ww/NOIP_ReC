program skyline;
var
  ap,ar,aap,aar,c,b,bb:array[1..150]of longint;
  f:array[0..100,0..100]of longint;
  n,n1,n2,p,r,i,j,k,l,pg,rune,num,dps:longint;
begin
  assign(input,'pgrune.in');reset(input);
  assign(output,'pgrune.out');rewrite(output);
  readln(n,p,r);
  for i:=1 to n do
  begin
  readln(pg,rune,num,dps);
  if (num=0)or((pg*num>=p)and(rune*num>=r)) then begin
     inc(n1);
     ap[n1]:=pg;ar[n1]:=rune;b[n1]:=dps;
     end                                    else begin
     inc(n2);
     aap[n2]:=pg;aar[n2]:=rune;bb[n2]:=dps;c[n2]:=num;
     end;
  end;
  for i:=1 to n1 do
   for j:=ap[i] to p do
    for k:=ar[i] to r do
     if f[j-ap[i],k-ar[i]]+b[i]>f[j,k] then f[j,k]:=f[j-ap[i],k-ar[i]]+b[i];
  for i:=1 to n2 do
   for j:=p downto 0 do
    for k:=r downto 0 do
     for l:=1 to c[i] do
     if (j>=aap[i]*l)and(k>=aar[i]*l)and(f[j-aap[i]*l,k-aar[i]*l]+bb[i]*l>f[j,k]) then f[j,k]:=f[j-aap[i]*l,k-aar[i]*l]+bb[i]*l;
  writeln(f[p,r]);
  close(input);close(output);
end.
