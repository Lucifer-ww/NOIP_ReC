program save;
const
  maxn=1000;
  dx:array[1..4]of longint=(1,0,-1,0);
  dy:array[1..4]of longint=(0,1,0,-1);
type
  xy=record
    dis,y,x:longint;
  end;
var
  n:longint;
  g:array[0..maxn+1,0..maxn+1]of boolean;
  dl:array[1..maxn*maxn]of xy;
  sx,sy,gx,gy:longint;
  procedure init;
  var
    i,j:longint;
    ch:char;
  begin
    assign(input,'save.in');reset(input);
    fillchar(g,sizeof(g),false);
    readln(n);
    for i:=1 to n do
    begin
      for j:=1 to n do
      begin
        read(ch);
        g[i,j]:=(ch='0');
      end;
      readln;
    end;
    readln(sy,sx,gy,gx);
    close(input);
  end;

  procedure bfs;
  var
    dir,head,tail,i,j,ti,tj:longint;
  begin
    head:=1;tail:=1;
    dl[head].y:=sy;dl[head].x:=sx;
    dl[head].dis:=0;
    g[sy,sx]:=false;

    repeat
      i:=dl[head].y;j:=dl[head].x;
      for
      dir:=1 to 4 do
      begin
        ti:=i+dy[dir];tj:=j+dx[dir];
        if g[ti,tj] then
        begin
          inc(tail);
          dl[tail].y:=ti;dl[tail].x:=tj;
          dl[tail].dis:=dl[head].dis+1;
          g[ti,tj]:=false;
          if (ti=gy)and(tj=gx) then
          begin
            assign(output,'save.out');rewrite(output);
            writeln(dl[tail].dis);
            close(output);
            halt;
          end;
        end;
      end;
      inc(head);
    until head>tail;
  end;

begin
  init;
  bfs;
end.








