var f:array[0..1000]of longint;
       i,n:longint;
procedure setio;
begin
	assign(input,'stairs.in');
	assign(output,'stairs.out');
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
        f[0]:=1; f[1]:=1;
        for i:=2 to n do
          f[i]:=f[i-1]+f[i-2];
        writeln(f[n]);
        print;
end.

