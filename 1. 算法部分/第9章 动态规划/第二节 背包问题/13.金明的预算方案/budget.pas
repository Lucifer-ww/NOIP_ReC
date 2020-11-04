var
n,m:longint;
newv,newp:array[-1000..maxint] of longint;
v,p,q:array[-1000..maxint] of longint;
f:array[-1000..maxint] of longint;

function calc(k:longint):longint;
var
i,j,x:longint;
begin
x:=1;
newv[1]:=v[k];
newp[1]:=p[k];
for i:=1 to m do
if q[i]=k then
begin
for j:=1 to x do
begin
newv[j+x]:=newv[j]+v[i];
newp[j+x]:=newp[j]+p[i];
end;
x:=x*2;
end;
exit(x);
end;

procedure dp;
var
i,j,k,temp:longint;
begin
fillchar(f,sizeof(f),0);
for i:=1 to m do
begin
if q[i]<>0 then continue;
for j:=n downto 1 do
for k:=1 to calc(i) do
if j>=newv[k] then
if (f[j]<f[j-newv[k]]+newp[k]) then f[j]:=f[j-newv[k]]+newp[k];
end;
end;


procedure init;
var
i:longint;
begin
read(n,m);
for i:=1 to m do
begin
read(v[i],p[i],q[i]);
p[i]:=p[i]*v[i];
end;
end;

begin
assign(input,'budget.in');
reset(input);
assign(output,'budget.out');
rewrite(output);

init;
dp;
writeln(f[n]);

close(input);
close(output);
end.




