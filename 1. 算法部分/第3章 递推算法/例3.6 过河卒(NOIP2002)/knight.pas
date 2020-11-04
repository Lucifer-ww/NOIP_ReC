const c:array[1..8]of integer=(1,1,-1,-1,2,2,-2,-2);
      d:array[1..8]of integer=(-2,2,-2,2,1,-1,-1,1);
var b:array[-2..21,-2..21]of boolean;
    i,j,n,m,x,y:integer; f:array[0..21,0..21]of int64;
procedure setio;
begin
   assign(input,'knight.in');
   reset(input);
   assign(output,'knight.out');
   rewrite(output);
end;
procedure print;
begin
    close(input);
    close(output);
end;
begin
    setio;
    readln(n,m,x,y);
    fillchar(b,sizeof(b),true);
    fillchar(f,sizeof(f),0);
    b[x,y]:=false;
    for i:=1 to 8 do
      b[x+c[i],y+d[i]]:=false;
    f[0,0]:=1;
    for i:=1 to m do
      if not b[0,i] then break else f[0,i]:=f[0,i-1];
    for i:=1 to n do
      if not b[i,0] then break else f[i,0]:=f[i-1,0];
    for i:=1 to n do
      for j:=1 to m do
        if b[i,j] then
           f[i,j]:=f[i-1,j]+f[i,j-1];
    writeln(f[n,m]);
    print;
end.
