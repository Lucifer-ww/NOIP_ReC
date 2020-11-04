var
a,b:array[0..100] of integer;
i,j,n:integer;
begin
        assign(input,'hanoi.in'); reset(input);
        assign(output,'hanoi.out'); rewrite(output);
        read(n);
        b[100]:=1;
        for i:=1 to n do
                begin
                        for j:=1 to 100 do b[j]:=b[j]*2;
                        for j:=100 downto 1 do if b[j]>9 then
                                begin
                                        b[j]:=b[j]-10;
                                        b[j-1]:=b[j-1]+1;
                                end;
                        for j:=1 to 100 do a[j]:=a[j]+b[j];
                        for j:=100 downto 1 do if a[j]>9 then
                                begin
                                        a[j]:=a[j]-10;
                                        a[j-1]:=a[j-1]+1;
                                end;
                end;
        j:=1;
        while a[j]=0 do j:=j+1;
        for i:=j to 100 do write(a[i]);
        close(input);
        close(output);
end.
