const
        oo=100000000;
var
        n,i,j,k,ans:longint;
        a,l:array[0..21] of longint;
procedure find(x,max:longint);
var
        i:longint;
begin
        if max < ans then
        begin
                if x > n then ans:=max
                else begin
                        for i:=1 to k do
                        begin
                                inc(l[i],a[x]);
                                if l[i] > max then find(x+1,l[i])
                                else find(x+1,max);
                                dec(l[i],a[x]);
                        end;
                     end;
        end;
end;

begin
        assign(input,'machine.in');reset(input);
        assign(output,'machine.out');rewrite(output);
        read(n,k);
        for i:=1 to n do read(a[i]);
        for i:=1 to n-1 do
           for j:=i+1 to n do
              if a[i] < a[j] then
              begin
                a[0]:=a[i];
                a[i]:=a[j];
                a[j]:=a[0];
              end;
        i:=1;
        while I<=n do
        begin
                inc(ans,a[i]);
                i:=i+k;
        end;
        find(1,0);
        writeln(ans);
        close(input);close(output);
end.