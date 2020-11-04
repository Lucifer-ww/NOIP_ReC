var
        ans,r,x,y,i,N,K,M:longint;
        l,f:array[0..101] of longint;
        a:array[0..10001,1..2] of longint;
procedure insert(x,y:longint);
begin
        inc(r);
        a[r,1]:=y;
        a[r,2]:=f[x];
        f[x]:=r;
end;

procedure find(x:longint);
var
        i:longint;
        c:array[1..6] of longint;
begin
        if x>n then inc(ans)
        else begin
                for i:=1 to k do c[i]:=0;
                i:=f[x];
                while i>0 do
                begin
                        c[l[a[i,1]]]:=1;
                        i:=a[i,2];
                end;
                for i:=1 to k do
                   if c[i]=0 then
                   begin
                        l[x]:=i;
                        find(x+1);
                   end;
             end;
end;

begin
        assign(input,'color.in');reset(input);
        assign(output,'color.out');rewrite(output);
        read(n,m,k);
        for i:=1 to m do
        begin
                read(x,y);
                if x<y then insert(y,x)
                else insert(x,y);
        end;
        find(1);
        writeln(ans);
        close(input);close(output);
end.
