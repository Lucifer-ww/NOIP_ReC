var
       f:array[1..1000]of longint;
       i,n,p:longint;
procedure setio;
begin
	assign(input,'surface.in');
	assign(output,'surface.out');
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
        readln(n,p);
        f[p]:=2*p;
        for i:=p+1 to n do
         f[i]:=f[i-1]+i;
        writeln(f[n]);
        print;
end.

