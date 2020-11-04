program stick;
var l,w,p : array[1..1001] of longint;
    i,j,n,max,max1,t : longint;
begin
  assign(input,'stick.in');
  assign(output,'stick.out');
  reset(input);
  rewrite(output);
  readln(n);
  for i := 1 to n do
    read(l[i],w[i]);
  for i := 1 to n-1 do
    for j := i+1 to n do
      if (l[i]>l[j]) or ((l[i]=l[j]) and (w[i]>w[j])) then
      begin
         t := l[i];  l[i] := l[j];  l[j] := t;
         t := w[i];  w[i] := w[j];  w[j] := t;
      end;
  i := 1;
  fillchar(p,sizeof(p),0);
  t := 0;
  for i := 1 to n do
    begin
      j := 1;
      while p[j]>w[i] do inc(j);
      if j>t then inc(t);
      p[j] := w[i];
    end;
  writeln(t);
  close(input);  
  close(output)
end.
