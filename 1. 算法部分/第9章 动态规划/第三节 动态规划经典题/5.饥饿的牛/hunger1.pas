program hunger;
const len=1000;
      lenb=2000;
var b,i,j,k,l : longint;
    eat : array[0..len,1..2] of longint;
    max : array[0..lenb] of longint;
begin
  assign(input,'hunger.in');
  reset(input);
  assign(output,'hunger.out');
  rewrite(output);
  read(b);
  for i := 1 to b do read(eat[i,1],eat[i,2]);
  for i := 1 to b-1 do
    for j := i+1 to b do
      if eat[i,1]>eat[j,1] then
      begin
        eat[0] := eat[i];  eat[i] := eat[j];  eat[j] := eat[0];
      end;
  fillchar(max,sizeof(max),0);
  for i := 1 to b do
  begin
    k := 0;
    for j := 0 to eat[i,1]-1 do 
      if max[j]>k then 
        k := max[j];
        l := k+eat[i,2]-eat[i,1]+1;
      if l>max[eat[i,2]] then max[eat[i,2]] := l;
  end;
  k := 0;
  for j := 0 to lenb do 
    if max[j]>k then k := max[j];
  writeln(k);
close(output)
end.