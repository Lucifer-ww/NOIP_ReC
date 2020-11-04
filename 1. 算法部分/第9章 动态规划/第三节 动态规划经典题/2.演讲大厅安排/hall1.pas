var
  a         : array[1..5000] of integer;
  t         : array[0..5000,1..2] of integer;
  n,i,j,max : integer;

begin
  assign(input,'hall.in'); reset(input);
  assign(output,'hall.out'); rewrite(output);
  readln(n);
  for i := 1 to n do readln(t[i,1],t[i,2]);
  for i := 1 to n-1 do
    for j := i+1 to n do
      if t[i,2] > t[j,2] then begin
        t[0] := t[i]; t[i] := t[j]; t[j] := t[0];
      end;
  for i := 1 to n do begin
    max := 0;
    for j := 1 to i-1 do
      if (a[j] > max) and (t[i,1] >= t[j,2]) then max := a[j];
    a[i] := max+t[i,2]-t[i,1];
  end;
  max := 0;
  for i := 1 to n do
    if a[i] > max then max := a[i];
  writeln(max);
  close(input); close(output);
end.