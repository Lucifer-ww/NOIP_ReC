const
  a:array[0..4,1..10] of byte = ((0,0,0,0,0,0,0,0,0,0),
                                 (0,0,1,0,1,0,0,1,0,0),
                                 (0,1,1,1,0,1,0,1,1,1),
                                 (0,1,1,1,0,0,0,1,0,1),
                                 (0,0,1,1,1,0,0,1,1,1));
var
  b:array[1..4] of byte;

procedure check;
var j,k:byte;
begin
  fillchar(b,sizeof(b),0);
  for j:= 1 to 4 do
    for k:= 1 to 10 do
      if a[j,k]=a[0,k] then inc(b[j]);
  if (b[1]<>7) or (b[2]<>5) or (b[3]<>3) then exit;
  writeln(b[4]*10);
  halt;
end;

procedure sub(s:byte);
var i:byte;
begin
  if s>10 then check
  else
   for i:=0 to 1 do
    begin
      a[0,s] := i;
      sub(s+1);
    end;
end;

begin
  sub(1);
end.
