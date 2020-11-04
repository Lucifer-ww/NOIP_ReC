program z91;
const n=10;
      d:array[0..1,1..4]of integer=((0,1,0,-1),(-1,0,1,0));
var que:array[0..1,1..n*n]of byte;
    gr:array[1..n,1..n]of 0..2;
    i,j,f,x,y,start,tail,sum:integer;
    t:text;
begin
  assign(t,'c:\t.txt');
  reset(t);
  for i:=1 to n do
    for j:=1 to n do
    read(t,gr[i,j]);
  close(t);
  sum:=0;
  for i:=1 to n do
    for j:=1 to n do
      if gr[i,j]>0 then inc(sum);
  x:=1;y:=5;start:=1;tail:=1;
  que[0,1]:=x;que[1,1]:=y;gr[1,1]:=2;
  repeat
    for f:=1 to 4 do
      begin
        x:=que[0,start]+d[0,f];
        y:=que[1,start]+d[1,f];
        if (x>0)and(x<=n)and(y>0)and(y<=n)then
         if gr[x,y]=0 then
           begin
             inc(tail);gr[x,y]:=2;
             que[0,tail]:=x;
             que[1,tail]:=y;
           end;
      end;
    inc(start);
  until start>tail;
  writeln('area=',n*n-sum-tail);
  readln;
end.
