var
        ans,n,j:longint;
        c:char;
        l:array[0..501] of char;
        a:array['a'..'z'] of longint;
procedure print;
var
        i:longint;
begin
        inc(ans);
        for i:=1 to n do write(l[i]);
        writeln;
end;

procedure find(x:longint;c:char);
var
        i:char;
begin
        if x>n then print
        else begin
                for i:=c to 'z' do
                   if a[i] > 0 then
                   begin
                        l[x]:=i;
                        dec(a[i]);
                        if a[c]=0 then find(x+1,chr(ord(c)+1))
                        else find(x+1,c);
                        inc(a[i]);
                   end;
             end;
end;

begin
        assign(input,'perm.in');reset(input);
        assign(output,'perm.out');rewrite(output);
        readln(n);
        for j:=1 to n do
        begin
                read(c);
                inc(a[c]);
        end;
        c:='a';
        while a[c]=0 do c:=chr(ord(c)+1);
        find(1,c);
        writeln(ans);
        close(input);close(output);
end.