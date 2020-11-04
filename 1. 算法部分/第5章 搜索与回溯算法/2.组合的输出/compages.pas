var
        n,m:integer;
        l:array[0..21] of integer;
procedure print;
var
        i:integer;
begin
        if m>0 then
        begin
                write(l[1]);
                for i:=2 to m do write(' ',l[i]);
                writeln;
        end;
end;

procedure create(x,min:integer);
var
        i:integer;
begin
        if x>m then print
        else begin
                for i:=min to n do
                   begin
                        l[x]:=i;
                        create(x+1,i+1);
                   end;
             end;
end;

begin
        assign(input,'Compages.in');reset(input);
        assign(output,'Compages.out');rewrite(output);
        read(n,m);
        create(1,1);
        close(input);close(output);
end.
