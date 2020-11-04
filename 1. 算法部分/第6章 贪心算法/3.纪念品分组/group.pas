var
        c,n,ans,i,j,tmp,x:longint;
        a:array[1..200] of longint;

function min(i,j:longint):longint;
begin
        if i=j then exit(a[i] shr 1);
        if a[i]<a[j] then exit(a[i]) else exit(a[j]);
end;

begin
        assign(input,'group.in');reset(input);
        assign(output,'group.out');rewrite(output);
        readln(c);
        readln(n);
        for i:=1 to n do
        begin
                read(x);
                inc(a[x]);
        end;
        for i:=200 downto 1 do if a[i]>0 then
                for j:=200 downto 1 do if ((i<>j)or((i=j)and(a[i]>1)))and(a[i]>0)and(a[j]>0)and(i+j<=c) then
                begin
                        tmp:=min(i,j);
                        dec(ans,tmp);
                        dec(a[i],tmp);
                        dec(a[j],tmp);
                end;
        writeln(ans+n);
        close(input);
        close(output);
end.