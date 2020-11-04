const
        oo=100000000;
var
        n,i,j,ans,k:longint;
        c:array[0..21,0..21] of longint;
        min:array[0..21] of longint;
        ha:array[0..21] of boolean;
procedure find(x,z:longint);
var
        i:longint;
begin
        if z+min[x]<ans then
        begin
                if x>n then ans:=z
                else begin
                        for i:=1 to n do
                           if ha[i] then
                           begin
                                ha[i]:=false;
                                find(x+1,z+c[x,i]);
                                ha[i]:=true;
                           end;
                     end;
        end;
end;

begin
        assign(input,'job.in');reset(input);
        assign(output,'job.out');rewrite(output);
        read(n);
        for i:=1 to n do
        begin
                min[i]:=oo;
                for j:=1 to n do
                begin
                        read(c[i,j]);
                        if c[i,j] < min[i] then min[i]:=c[i,j];
                end;
        end;
        for i:=1 to n do
        begin
                K:=0;
                for j:=1 to n do
                   if (not ha[j]) and ( (k=0) or (c[i,j]<c[i,k]) ) then k:=j;
                ha[k]:=true;
                inc(ans,c[i,k]);
        end;
        ans:=oo;
        for i:=n-1 downto 1 do inc(min[i],min[i+1]);
        find(1,0);
        writeln(ans);
        close(input);close(output);
end.