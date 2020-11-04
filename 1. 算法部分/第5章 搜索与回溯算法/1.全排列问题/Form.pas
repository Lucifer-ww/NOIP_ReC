var
        n,i:integer;
        ha:array[0..10] of boolean;
        l:array[0..10] of integer;
procedure print;
var
        i:integer;
begin
        write(l[1]);
        for i:=2 to n do write(' ',l[i]);
        writeln;
end;

procedure create(x:integer);
var
        i:integer;
begin
        if x>n then print
        else begin
                for i:=1 to n do
                   if not ha[i] then
                   begin
                        ha[i]:=true;
                        l[x]:=i;
                        create(x+1);
                        ha[i]:=false;
                   end;
             end;
end;

begin
        assign(input,'Form.in');reset(input);
        assign(output,'Form.out');rewrite(output);
        read(n);
        for i:=1 to n do ha[i]:=false;
        create(1);
        close(input);close(output);
end.