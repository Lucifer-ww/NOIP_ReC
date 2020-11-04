var
   n,i,j,t:integer; k:longint;
   a:array[1..11000]of integer;
procedure setio;
begin
    assign(input,'carry.in');
    assign(output,'carry.out');
    reset(input);
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
    for i:=1 to n do
     read(a[i]);
    k:=0;
    for i:=1 to n-1 do
       for j:=i+1 to n do
          if a[i]>a[j] then
               begin
                  inc(k);
               end;
    writeln(k);
    print;
end.
