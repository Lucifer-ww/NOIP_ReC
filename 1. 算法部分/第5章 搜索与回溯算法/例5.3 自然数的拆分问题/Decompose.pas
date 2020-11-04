var
        n,r:longint;
        l:array[0..100] of longint;
procedure print;
var
        i:longint;
begin
        if r>1 then
        begin
                write(l[1]);
                for i:=2 to r do write('+',l[i]);
                writeln;
        end;
end;

procedure find(x,min:longint);
var
        i:longint;
begin
        if x=0 then print
        else begin
                for i:=min to x do
                begin
                        inc(r);
                        l[r]:=i;
                        find(x-i,i);
                        dec(r);
                end;
             end;
end;

begin
        assign(input,'Decompose.in');reset(input);
        assign(output,'Decompose.out');rewrite(output);
        read(n);
        find(n,1);
        close(input);close(output);
end.