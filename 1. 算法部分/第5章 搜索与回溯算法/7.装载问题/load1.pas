var
        ans,c,n,i,j:longint;
        s,min,a:array[0..41] of longint;
procedure find(x,z:longint);
begin
        if z > ans then ans:=z;
        if ans=c then exit;
        if (x<=n) AND (z+min[x] <=c) and (z+s[x] > ans) then
        begin
                find(x+1,z);
                if z+a[x] <= c then find(x+1,z+a[x]);
        end;
end;

begin
        assign(input,'load.in');reset(input);
        assign(output,'load.out');rewrite(output);
        read(n,c);
        for i:=1 to n do read(a[i]);
        s[n]:=a[n];
        min[n]:=a[n];
        for i:=n-1 downto 1 do
        begin
                s[i]:=a[i]+s[i+1];
                if a[i] < min[i+1] then min[i]:=a[i]
                else min[i]:=min[i+1];
        end;
        find(1,0);
        writelN(ans);
        close(input);close(output);
end.