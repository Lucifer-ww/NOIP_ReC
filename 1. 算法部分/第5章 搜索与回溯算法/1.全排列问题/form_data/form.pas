program p1_1(input,output);
var
  a : array[1..100] of integer;
  n : integer;

procedure  print;
var i : integer;
begin
  for i := 1 to n do
    write(a[i] : 5);
  writeln
end;

function try(k,i : integer) : boolean;
var m : integer;
begin
  m := 1;
  while (m<k) and (i<>a[m]) do m := m+1;
  if m=k then try := true
    else try := false
end;

procedure find(k : integer);
var i : integer;
begin
 if k>n then print
   else
     for i := 1 to n do
       if try(k,i) then
       begin
         a[k] := i;
         find(k+1);
       end;
end;

begin
  assign(input,'Form.in');
  reset(input);
  assign(output,'Form.out');
  rewrite(output);
  readln(n);
  find(1);
  close(input);  close(output);
end.
