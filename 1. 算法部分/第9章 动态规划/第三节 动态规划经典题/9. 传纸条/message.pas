var
  f:array[-50..101,-50..51,-50..51]of longint;
  a:array[-100..100,-100..100]of longint;
  n,i,j,k,m,maxn,s,minn,xxx:longint;
function max(a,b:longint):longint;
 begin
if a>b then max:=a else max:=b
end;
begin
  assign(input,'message.in');   reset(input);
  assign9output,'message.out'); rewrite(output);
  readln(n,m);
  for i:=1 to n do
   for j:=1 to m do read(a[i,j]);      fillchar(f,sizeof(f),0);
  xxx:=m+n-2;
  for k:=2 to xxx do
   begin

     for i:=1 to n do
      for j:=i+1 to n do
        begin
          if abs(j-i) > 1 then
           begin
              f[k,i,j]:=max(f[k-1,i,j],f[k-1,i,j-1]);
              f[k,i,j]:=max(f[k,i,j],f[k-1,i-1,j]);
              f[k,i,j]:=max(f[k,i,j],f[k-1,i-1,j-1]);
              inc(f[k,i,j],a[i,k+1-i]+a[j,k+1-j]);
           end else

           begin
             f[k,i,j]:=max(f[k-1,i,j],f[k-1,i-1,j-1]);
             f[k,i,j]:=max(f[k,i,j],f[k-1,i-1,j]);
              inc(f[k,i,j],a[i,k+1-i]+a[j,k+1-j]);
           end;

        end;
   end;
  writeln(f[xxx,n-1,n]);
  close(input); rewrite(output);
end.
