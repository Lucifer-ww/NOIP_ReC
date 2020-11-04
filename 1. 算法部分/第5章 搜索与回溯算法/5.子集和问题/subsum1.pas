var
        n,i,r,c:longint;
        min,s,l,a:array[0..7001] of longint;
procedure print;
var
        i:longint;
begin
        write(l[1]);
        for i:=2 to r do write(' ',l[i]);
        close(input);close(output);
        halt;
end;

procedure find(x,z:longint);
begin
        if z=c then print;
        if (x<=n) and (z+min[x]<=c) and (z+s[x]>=c) then
        begin
                if z+a[x] <= c then
                begin
                        inc(r);
                        l[r]:=a[x];
                        find(x+1,z+a[x]);
                        dec(r);
                end;
                find(x+1,z);
        end;
end;

begin
        assign(input,'subsum.in');reset(input);
        assign(output,'subsum.out');rewrite(output);
        read(n,c);
        for i:=1 to n do read(a[i]);
        min[n]:=a[i];
        s[n]:=a[i];
        for i:=n-1 downto 1 do
        begin
                if a[i] < min[i+1] then min[i]:=a[i]
                else min[i]:=min[i+1];
                s[i]:=s[i+1]+a[i];
        end;
        find(1,0);
        writeln('No Solution!');
        close(input);close(Output);
end.
