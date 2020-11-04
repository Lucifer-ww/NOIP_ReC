var
        a       : array[1..256,1..256] of longint;
        n,m,i,j : longint;
procedure make(i,j,l,r:longint);
begin
        if l = r then a[i,j]:=l else
        begin
                make(i,j,l,(l+r) shr 1);
                make(i+(r-l) shr 1+1,j+(r-l) shr 1+1,  l , (l+r) shr 1);
                make(i+(r-l) shr 1+1,j,  (l+r) shr 1 + 1 , r);
                make(i,j+(r-l) shr 1+1,  (l+r) shr 1 + 1 , r)
        end;
end;
begin
        assign(input,'match.in');
        reset(input);
        assign(output,'match.out');
        rewrite(output);
        readln(m);
        n:=1 shl m;
        make(1,1,1,n);
        for i:=1 to n do
        begin
                for j:=1 to n do write(a[i,j],' ');writeln
        end;
        close(output)
end.