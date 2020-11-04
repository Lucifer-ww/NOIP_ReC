program word(input,output);
var s : string;
    w : array[1..100] of string;
    st : array[0..100] of integer;
    n,i,j : integer;
begin
  assign(input,'word.in');  reset(input);
  assign(output,'word.out'); rewrite(output);
  readln(s);
  readln(n);
  for i := 1 to n do
    readln(w[i]);

  fillchar(st,sizeof(st),$7F);
  st[0] := 0;
  for i := 1 to length(s) do
    for j := 1 to n do
      if (length(w[j]) <= i) and (st[i - length(w[j])] < st[i])
        and (copy(s, i - length(w[j]) + 1, length(w[j])) = w[j])
          then st[i] := st[i - length(w[j])] + 1;
  writeln(st[length(s)]);
  close(input);close(output)
end.