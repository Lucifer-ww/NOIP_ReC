const
 maxn=50;
 dx:array[1..8] of integer=(0,1,1,1,0,-1,-1,-1);
 dy:array[1..8] of integer=(-1,-1,0,1,1,1,0,-1);
var
 a:array[1..maxn,1..maxn]of 0..1;   {记录迷宫坐标}
 c:array[1..maxn,1..maxn]of 0..1;   {访问标志:0:没走;1:已走}
 b:array[0..maxn*maxn] of integer;  {记录路径方向}
 n,x,y,i,j:integer;
 count:longint;
procedure print(i:integer);
var j:integer;
begin 
    inc(count);
    {x:=1;
    y:=1;
    write('(',x,',',y,')'); {初始位置}
    for j:=1 to i do    {输出路线}
      begin
        x:=x+dx[b[j]];
        y:=y+dy[b[j]];
        write('->','(',x,',',y,')');
      end;
    writeln;}
end;

procedure try(i:integer);{搜索第i步应到达的位置}
var k:integer;
begin
  for k:=1 to 8 do
     if (x+dx[k]>=1)and(x+dx[k]<=n)and(y+dy[k]>=1)and(y+dy[k]<=n) then
       if (a[x+dx[k],y+dy[k]]=0)and(c[x+dx[k],y+dy[k]]=0) then
            begin
              x:=x+dx[k];
              y:=y+dy[k];
              c[x,y]:=1;
              b[i]:=k;
              if (x=n)and(y=1) then print(i)
                else try(i+1);
              c[x,y]:=0;
              x:=x-dx[k];
              y:=y-dy[k];
            end;
end;

begin
  assign(input,'migong.in');  reset(input);
  assign(output,'migong.out');rewrite(output);
  readln(n);
  for i:=1 to n do
   begin
    for j:=1 to n do
      begin
        read(a[j,i]); {i:纵坐标;j:横坐标}
        c[j,i]:=0;
      end;
   end;
  x:=1;
  y:=1;
  c[1,1]:=1;
  try(1);
  writeln(count);
  close(input);close(output);
end.
