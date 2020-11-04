program tsoi2_diablo;
const
  LimitN=100;
  LimitM=500;
  LimitP=50;
  fi='diablo.in';
  fo='diablo.out';

var
  n,money:longint;
  cost:array[1..LimitN] of longint;
  total:array[1..LimitN] of longint;
  value:array[1..LimitN,0..LimitP] of longint;
  f:array[0..LimitN,0..LimitM] of longint;
  d:array[0..LimitN,0..LimitM] of longint;

procedure init;
var i,j:longint;
begin
  readln(n,money);
  for i:=1 to n do
    begin
      read(cost[i],total[i]);
      for j:=1 to total[i] do
        read(value[i][j]);
      readln;
    end;
end;

procedure _output(dn,dmoney:longint);
begin
  if dn=0 then exit;
  _output(dn-1,dmoney-d[dn,dmoney]*cost[dn]);
  writeln(d[dn,dmoney])
end;

procedure solve;
var i,j,k,max,maxp:longint;
begin
  fillchar(f,sizeof(f),0);
  f[0,0]:=0;
  for i:=1 to n do
    for j:=0 to money do
      for k:=0 to total[i] do
        begin
          if j<k*cost[i] then break;
          if f[i-1,j-k*cost[i]]+value[i][k]>f[i,j] then
            begin
              f[i,j]:=f[i-1,j-k*cost[i]]+value[i][k];
              d[i,j]:=k;
            end;
        end;
  max:=-maxlongint;
  for i:=0 to money do
    if f[n,i]>max then
      begin
        max:=f[n,i];
        maxp:=i;
      end;
  writeln(max);
  _output(n,maxp);
end;

begin
  assign(input,fi);
  reset(input);
  assign(output,fo);
  rewrite(output);
  init;
  solve;
  close(input);
  close(output);
end.
