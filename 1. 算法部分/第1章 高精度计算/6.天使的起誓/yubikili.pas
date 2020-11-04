program yubikili;
var
   i,lm,k,n,x:longint;
   m:ansistring;
   a,c:array[1..100000] of longint;

begin

  readln(n);
  readln(m);
  lm:=length(m);
  for i:=1 to lm do a[i]:=ord(m[i])-ord('0');
  x:=0;
  for i:=1 to lm do
   begin
     c[i]:=(x*10+a[i]) div n;
     x:=(x*10+a[i]) mod n;
   end;
  if x=0 then writeln(n) else writeln(x);

end.
