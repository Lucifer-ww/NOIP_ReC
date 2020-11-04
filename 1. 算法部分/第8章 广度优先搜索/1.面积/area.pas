const
   dx: array[1..4] of longint = (-1,0,0,1);
   dy: array[1..4] of longint = (0,1,-1,0);
var
   ans,x,y,i,j,h,t : longint;
   a		   : array[0..11,0..11] of longint;
   zx,zy	   : array[0..1000] of longint;
   b		   : array[0..11,0..11] of boolean;
begin
   fillchar(a,sizeof(a),0);
   fillchar(b,sizeof(b),1);
   for i:=1 to 10 do
      for j:=1 to 10 do read(a[i,j]);
   h:=0; t:=1;
   zx[1]:=0; zy[1]:=0;
   b[0,0]:=false;
   repeat
      inc(h);
      for i:=1 to 4 do
      begin
	 x:=zx[h]+dx[i];
	 y:=zy[h]+dy[i];
	 if (x>=0) and (x<=11) and (y>=0) and (y<=11) then
	    if (a[x,y]=0) and b[x,y] then
	    begin
	       b[x,y]:=false;
	       inc(t);
	       zx[t]:=x; zy[t]:=y;
	    end;
      end;
   until h>=t;
   ans:=0;
   for i:=1 to 10 do
      for j:=1 to 10 do
	 if a[i,j]=0 then
	    if b[i,j] then inc(ans);
   writeln(ans);
end.
