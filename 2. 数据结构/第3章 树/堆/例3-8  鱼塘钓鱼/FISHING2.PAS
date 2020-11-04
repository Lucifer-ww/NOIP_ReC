program fishing2;         //动态规划
const maxT = 1000;
      maxF = 1000;
      maxN = 100;
type nodeP = record
                  fish,delta,time:longint;
             end;
var Fishing:array[0..maxF+1] of longint;
    Opt,tOpt:array[0..maxT] of longint;
    Pound:array[1..maxN] of nodeP;
    ans,n,t,i:longint;

procedure Doit;
var i,j,k,tmp:longint;
begin
   for i:=1 to n do
      with pound[i] do
        begin
           for j:=0 to t do tOpt[j]:=-maxlongint;
           fillchar(Fishing,sizeof(Fishing),0);
           for j:=1 to fish div delta+1 do
Fishing[j]:=Fishing[j-1]+fish-(j-1)*delta;
           for j:=0 to t do
              for k:=0 to fish div delta+1 do
                 if (j+k+time)<=t then
                    begin
                        tmp:=Opt[j]+Fishing[k];
                        if tmp>tOpt[j+k+time] then tOpt[j+k+time]:=tmp;
                        if tmp>ans then ans:=tmp;
                    end;
           Opt:=tOpt;
        end
end;

begin           //main
  assign(input,'fishing.in');  reset(input);
  assign(output,'fishing.out'); rewrite(output);
  readln(n);
  for i:=1 to n do read(pound[i].fish); readln;
  for i:=1 to n do read(pound[i].delta); readln;
  for i:=1 to n-1 do read(pound[i+1].time); readln;
  readln(t);
  ans:=-maxlongint;
  Doit;                         //动态规划过程
  writeln(ans);
  close(input); close(output)
end.

