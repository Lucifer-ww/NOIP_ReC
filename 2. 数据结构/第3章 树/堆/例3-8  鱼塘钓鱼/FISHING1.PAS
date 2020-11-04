program fishing1;          //贪心法
const maxF = 1000;
      maxN = 100;
type nodeP = record
                  fish,delta,time:longint;
             end;
var Hash:array[0..maxF] of longint;
    Pound:array[1..maxN] of nodeP;
    ans,n,t,i:longint;

procedure Doit;
var i,j,remain,tmp:longint;
begin
   for i:=1 to n do
      with pound[i] do
        begin
           dec(t,time);
           for j:=0 to fish div delta do inc(Hash[fish-j*delta]);
           tmp:=0;
           remain:=t;
           j:=maxF;
           while remain>0 do
               begin
                  while (Hash[j]=0) and (j>0) do dec(j);
                  if j=0 then break;
                  if Hash[j]<=remain then
                      begin
                          dec(remain,Hash[j]);
                          inc(tmp,Hash[j]*j)
                      end
                  else begin
                          inc(tmp,remain*j);
                          remain:=0
                       end;
                  dec(j)
               end;
           if tmp>ans then ans:=tmp
        end
end;

begin              //main
  assign(input,'fishing.in');  reset(input);
  assign(output,'fishing.out'); rewrite(output);
  readln(n);
  for i:=1 to n do read(pound[i].fish); readln;
  for i:=1 to n do read(pound[i].delta); readln;
  for i:=1 to n-1 do read(pound[i+1].time); readln;
  readln(t);
  ans:=-maxlongint;
  Doit;                  //贪心过程
  writeln(ans);
  close(input); close(output)
end.

