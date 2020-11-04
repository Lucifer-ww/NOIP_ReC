program book;
var x,y,i,j,m,n,k,t,L:longint;
    a,d:array[0..500] of longint;
    f:array[0..500,0..500] of longint;

function max(x,y:longint):longint;
 begin
   if x>y then max:=x
   else max:=y;
 end;

procedure print(i,j:longint);
var t,x:longint;
 begin
   if j=0 then exit;
   if j=1 then
     begin
       writeln(1,' ',i);
       exit;
     end;
 t:=i;x:=a[i];
 while x+a[t-1]<=f[k,m] do
   begin
     x:=x+a[t-1];
     t:=t-1;
   end;
 print(t-1,j-1);
 writeln(t,' ',i);
end;

BEGIN
  assign(input,'book.in');
  assign(output,'book.out');
  reset(input); rewrite(output);
  readln(m,k);
  fillchar(f,sizeof(f),$7f);
  fillchar(d,sizeof(d),0);
  for j:=1 to m do
   begin
     read(a[j]);
     d[j]:=d[j-1]+a[j];
     f[1,j]:=d[j];
   end;
  for i:=2 to k do
   for j:=1 to m do
     for L:=1 to j-1 do
       if max(f[i-1,L],d[j]-d[L])<f[i,j] then f[i,j]:=max(f[i-1,L],d[j]-d[L]);
  print(m,k);
  close(input);close(output);
END.
