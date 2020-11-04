var c,a,b,n,a1:longint;
procedure setio;
begin
	assign(input,'acme.in');
	assign(output,'acme.out');
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
    a:=1; b:=1; a1:=1;
    while b<=n do
     begin
       c:=a+b;
       a1:=a;
       a:=b;
       b:=c;
     end;
    writeln('m=',a1);
    writeln('n=',a);
    print;
end.