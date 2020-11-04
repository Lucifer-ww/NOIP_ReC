program star;
var i,j,k,n,s,t,min:longint;
    a,b,f:array[0..1000]of longint;
    c,l:array[1..3]of longint;
 procedure swap(var x,y:longint);
  var temp:longint;
  begin
    temp:=x; x:=y; y:=temp;
  end;
begin
  assign(input,'railway.in');
  assign(output,'railway.out');
  reset(input);
  rewrite(output);
  readln(l[1],l[2],l[3],c[1],c[2],c[3]);
  readln(n);
  readln(s,t);
  if s>t then swap(s,t);
  for i:=2 to n do readln(a[i]);
  fillchar(f,sizeof(f),$7f);
  f[s]:=0;
  for i:=s+1 to t do
    for j:=i-1 downto s do
      for k:=1 to 3 do
        if a[i]-a[j]<=l[k] then
            if f[j]+c[k]<f[i] then f[i]:=f[j]+c[k];
  writeln(f[t]);
  close(input);
  close(output);
end.
