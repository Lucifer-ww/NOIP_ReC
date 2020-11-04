const
  xx:array[1..4]of longint=(1,0,-1,0);
  yy:array[1..4]of longint=(0,-1,0,1);
type node=record
     depth,x,y:longint;
     end;
var tx,ty,x1,y1,x2,y2,i,j,head,tail,h,w,k,r,ans,cut:longint;
    b:array[0..80,0..80]of longint;
    g:array[0..80,0..80]of boolean;
    q:array[1..100000]of node;
    ch:char;
    succeed:boolean;
    st:string;
begin
  assign(input,'mahjong.in'); reset(input);
  assign(output,'mahjong.out'); rewrite(output);
  readln(w,h);
  fillchar(g,sizeof(g),true);
  for i:=1 to h do
  begin
    readln(st);
    for j:=1 to w do
    if st[j]='X' then g[i,j]:=false;
  end;
  while true do
  begin
    readln(y1,x1,y2,x2);
    if (x1=0) and (y1=0) and (x2=0) and (y2=0) then break;
    fillchar(b,sizeof(b),0);
    head:=0; tail:=1; q[1].depth:=0; q[1].x:=x1; q[1].y:=y1; cut:=0;
    repeat
      inc(head); succeed:=false;
      for r:=1 to 4 do
      begin
        tx:=q[head].x+xx[r]; ty:=q[head].y+yy[r];
        while (tx>=0) and (tx<=h+1) and (ty>=0) and (ty<=w+1)and ((b[tx,ty]=0)or(b[tx,ty]=q[head].depth+1))do
        begin
          if (tx=x2) and (ty=y2)then
          begin
            writeln(q[head].depth+1);
            succeed:=true;
            break;
          end;
          if not g[tx,ty] then break;
          if b[tx,ty]=0 then
          begin
            b[tx,ty]:=q[head].depth+1;
            inc(tail);
            q[tail].depth:=q[head].depth+1;
            q[tail].x:=tx;
            q[tail].y:=ty;
          end;
          tx:=tx+xx[r]; ty:=ty+yy[r];
        end;
        if succeed then break;
      end;
    until (head>=tail) or succeed;
    if not succeed then writeln(0);
  end;
  close(input);
  close(output);
end.

