program ex1;
var
  map:array[1..20000] of integer;
  m,n,x,t:integer;

procedure init;
var
  i,j:integer;
begin
  assign(input,'work1.in');
  reset(input);
  assign(output,'work1.out');
  rewrite(output);
  readln(m,n);
  fillchar(map,sizeof(map),0);
  for i:=1 to m do
    for j:=1 to n do
    begin
      read(x);
      if x>map[j]
      then map[j]:=x;
    end;
end;

procedure main;
var
  s,i:longint;
begin
  s:=0;
  t:=0;
  for i:=1 to n do
  begin
    if s+map[i]>map[i]
    then s:=s+map[i]
    else s:=map[i];
    if s>t
    then t:=s;
  end;
end;

procedure out;
begin
  writeln(t);
  close(input);
  close(output);
end;

begin
  init;
  main;
  out
end.
