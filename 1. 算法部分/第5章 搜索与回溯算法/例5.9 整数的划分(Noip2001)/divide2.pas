var a:array[0..200]of longint;
    tot,m,n:longint;
procedure try(t,k:longint);
var i:longint;
begin
 if (t div 2)<a[k-1] then exit;
 if k=m then exit;
 for i:=1 to t do
  if (i>=a[k-1])and(i<=t div 2) then
   begin
    a[k]:=i;
    t:=t-i;
    if (t>=a[k])and(k+1=m) then inc(tot) else try(t,k+1);
    t:=t+i;
   end;
end;
begin
 assign(input,'divide.in');reset(input);
 assign(output,'divide.out');rewrite(output);
 readln(n,m);
 try(n,1);
 writeln(tot);
 close(input);close(output);
end.
