program crj_pipe;
var a:array[0..10000] of longint;x,i,t,n:longint;
 procedure qk(low,high:longint);
 var l,h,mid:longint;
 begin
  l:=low;h:=high;mid:=a[(l+h) div 2];
  repeat
   while (l<=high) and (a[l]<mid) do inc(l);
   while (h>=low) and (a[h]>mid) do dec(h);
   if l<=h then
   begin
    a[0]:=a[l];
    a[l]:=a[h];
    a[h]:=a[0];
    inc(l);
    dec(h);
   end;
  until l>h;
  if l<high then qk(l,high);
  if h>low then qk(low,h);
 end;
begin
 assign(input,'pipe.in');
 assign(output,'pipe.out');
 reset(input);
 rewrite(output);
 readln(n);
 for i:=1 to n do readln(x,a[i]);
 close(input);
 qk(1,n);
 t:=0;x:=(1+n) div 2;
 for i:=1 to n do t:=t+abs(a[i]-a[x]);
 writeln(t);
 close(output);
end.