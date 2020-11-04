program ex;
var n,x,i,s:integer;
    a:array[1..1000]of integer;

procedure setio;
begin
    assign(input,'random.in');
    reset(input);
    assign(output,'random.out');
    rewrite(output);
end;
procedure print;
begin
    close(input);
    close(output);
end;
begin
    setio;
    readln(n);
    for i:=1 to 1000 do
     a[i]:=0;
    for i:=1 to n do
     begin
     read(x);
     a[x]:=1;
     end;
    s:=0;
    for i:=1 to 1000 do
      s:=s+a[i];
    writeln(s);
    for i:=1 to 1000 do
      if a[i]>0 then write(i,' ');
    print;
end.
