program sheep439;
const n=10;
    d:array[1..4,1..2] of -1..1=((0,-1),(-1,0),(0,1),(1,0));
var stack:array[1..100,1..2] of integer;
    gr:array[1..n,1..n] of 0..2;
    i,j,x,y,sum,start,tail:integer;
    f:text;
  begin
   sum:=0;
   assign(f,'sheep.txt');
   reset(f);
   for i:=1 to n do
    for j:=1 to n do
     begin
      read(f,gr[i,j]);
      if gr[i,j]<>0 then inc(sum);
     end;
   x:=1;y:=1;
   start:=1;tail:=1;gr[1,1]:=2;
   stack[1,1]:=1;stack[1,2]:=1;
   repeat
    for i:=1 to 4 do
     begin
      x:=stack[start,1]+d[i,1];
      y:=stack[start,2]+d[i,2];
      if (x>0) and (x<=n) and (y>0) and (y<=n) and (gr[x,y]=0) then
       begin
        inc(tail);
        stack[tail,1]:=x;
        stack[tail,2]:=y;
        gr[x,y]:=2;
       end;
     end;
     inc(start);
   until start=tail;
   writeln(n*n-tail-sum);
   readln;
 end.