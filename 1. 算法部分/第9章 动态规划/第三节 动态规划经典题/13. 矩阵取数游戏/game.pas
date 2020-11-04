type
  hycd=array[0..35]of longint;
var //NOIP2007
  f:array[0..80,0..80]of hycd;
  a:array[1..80,1..80]of longint;
  g:array[-1..80]of hycd;
  x,y,h,ans:hycd;
  n,m,i,j,k:longint;
function mmax(a,b:longint):longint;
  begin
   if a>b then exit(a) else exit(b)
  end;
procedure times(var a,b,c:hycd);
  var i,j,k:longint;
  begin
   fillchar(c,sizeof(c),0);
    for i:=1 to a[0] do
     for j:=1 to b[0] do
      begin
        inc(c[i+j-1],a[i]*b[j]);
        inc(c[i+j],c[i+j-1] div 10);
        c[i+j-1]:=c[i+j-1] mod 10;
      end;
    k:=a[0]+b[0];
    while c[k]=0 do dec(k);c[0]:=k
  end;
procedure minus(var a,b,c:hycd);
 var i,j,k:longint;
 begin
    k:=mmax(a[0],b[0]);
    fillchar(c,sizeof(c),0);
    for i:=1 to k do
     begin
      inc(c[i],a[i]+b[i]);
      inc(c[i+1],c[i] div 10);
      c[i]:=c[i] mod 10;
     end;
    while c[k+1]>0 do
     begin
      inc(k);
      inc(c[k+1],c[k] div 10);
      c[k]:=c[k] mod 10
     end;
    c[0]:=k
 end;
function maxd(var a,b:hycd):hycd;
  var i,j:longint;
  begin
   if a[0]>b[0] then exit(a);
   if a[0]<b[0] then exit(b);
   for i:=a[0] downto 1 do
    begin
      if a[i]>b[i] then exit(a);
      if a[i]<b[i] then exit(b);
    end;
   maxd:=a
  end;
procedure change(var a:hycd; k:longint);
  var i,j:longint;
  begin
{    fillchar(a,sizeof(a),0);}a[0]:=0;
   while k>0 do
    begin
     inc(a[0]);a[a[0]]:=k mod 10;k:=k div 10
    end;
  end;
begin
  assign(input,'game.in');      reset(input);
  assign(output,'game.out');    rewrite(output);
  ans[0]:=1;
  readln(n,m);
  for i:=1 to n do for j:=1 to m do read(a[i,j]);
  g[0,0]:=1;g[0,1]:=1;
  g[-1,0]:=1;g[-1,1]:=2;
  for i:=1 to m do
   times(g[i-1],g[-1],g[i]);
  for k:=1 to n do
    begin
     {fillchar(f,sizeof(f),0);  }
     for i:=m downto 1 do
      for j:=i to m do
       begin
        if i=j then
        begin
          change(g[-1],a[k,i]);
         times(g[m],g[-1],f[i,j])
        end
         else
          begin
            change(g[-1],a[k,i]);
            times(g[m-j+i],g[-1],h);
            minus(h,f[i+1,j],x);
            change(g[-1],a[k,j]);
            times(g[m-j+i],g[-1],h);
            minus(h,f[i,j-1],y);
            f[i,j]:=maxd(x,y);
{           f[i,j]:=max(f[i+1,j]+a[k,i]*g[m-j+i],f[i,j-1]+a[k,j]*g[m-j+i]);}
          end;
       end;
     g[-1]:=ans;
     minus(g[-1],f[1,m],ans);
    end;
  for i:=ans[0] downto 1 do write(ans[i]);
  writeln;
  close(input);
  close(output);
end.
