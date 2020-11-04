var f:array[0..100,0..50]of longint;
    a:array[0..100]of longint;
    i,j,n,k,l,t:longint;
function min(x,y:longint):longint;
begin
   min:=x;
   if min>y then min:=y;
end;
begin
   assign(input,'chop.in');reset(input);
   assign(output,'chop.out');rewrite(output);
   readln(n,k);
   k:=k+3;
   for i:=1 to n do read(a[i]);
   for i:=1 to n-1 do
    for j:=i+1 to n do
      if a[i]>a[j] then
       begin
        t:=a[i];a[i]:=a[j];a[j]:=t;
       end;
   fillchar(f,sizeof(f),$7F div 3);
   f[0,0]:=0;
   for i:=1 to n do
    for j:=1 to k do
     for l:=1 to i-1 do
       f[i,j]:=min(f[i-1,j],f[l-1,j-1]+sqr(a[i]-a[l]));
   if k*2>n then writeln(-1)
            else writeln(f[n,k]);
   close(input);close(output);
end.
