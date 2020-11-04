var n,x,i,s,k:longint;
    a:array[1..30100]of integer;
procedure setio;
begin
   assign(input,'knumber.in');
   reset(input);
   assign(output,'knumber.out');
   rewrite(output);
end;
procedure print;
begin
    close(input);
    close(output);
end;
begin
    setio;
    readln(n,k);
    for i:=1 to 30000 do
     a[i]:=0;
    for i:=1 to n do
     begin
     read(x);
     a[x]:=1;
     end;
    s:=0;
    for i:=1 to 30000 do
     begin
       s:=s+a[i];
       if s=k then begin writeln(i); break; end;
     end;
    if s<k then writeln('NO RESULT');
    print;
end.