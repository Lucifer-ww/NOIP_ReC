const
        maxn=100000;
var
        a,b:array[1..maxn] of longint;
        n,i:longint;
        ans:int64;

function count(l,r:longint):longint;
var
        m,i,j,k:longint;
begin
        if l=r then exit;
        m:=(l+r) shr 1;
        count(l,m);count(m+1,r);
        i:=l;j:=m+1;k:=l-1;
        while (i<=m)and(j<=r) do
        begin
                while (a[i]<=a[j])and(i<=m) do
                begin
                        inc(k);
                        b[k]:=a[i];
                        if j<=r then inc(ans,j-m-1);
                        inc(i);
                end;
                while (a[i]>a[j])and(j<=r) do
                begin
                        inc(k);
                        b[k]:=a[j];
                        inc(j);
                end;
        end;
        while i<=m do
        begin
                inc(k);
                b[k]:=a[i];
                inc(ans,j-m-1);
                inc(i);
        end;
        for i:=l to j-1 do a[i]:=b[i];
end;

begin
        assign(input,'deseq.in');reset(input);
        assign(output,'deseq.out');rewrite(output);
        readln(n);
        for i:=1 to n do read(a[i]);
        count(1,n);
        writeln(ans);
        close(input);
        close(output);
end.
