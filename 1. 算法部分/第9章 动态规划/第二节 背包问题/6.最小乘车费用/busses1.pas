program buses(input,output);
type integer = longint;
var st : array[0..500] of integer;
    v : array[1..10] of integer;
    n, i, j : integer;
begin
  assign(input,'busses.in'); reset(input);
  assign(output,'busses.out'); rewrite(output);
  for i := 1 to 10 do read(v[i]);
  readln(n);
  fillchar(st,sizeof(st),$7F);   st[0] := 0;
  for i := 1 to n do
    for j := i - 1 downto 0 do
      if i - j > 10
        then break
        else if st[j] + v[i - j] < st[i]
               then st[i] := st[j] + v[i - j];
  writeln(st[n]);
  close(output);
end.
