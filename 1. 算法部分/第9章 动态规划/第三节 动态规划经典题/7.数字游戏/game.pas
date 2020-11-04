var
    a,atmp:array[0..50] of longint;
    f:array[0..9,0..50] of longint;
    n,m,i:longint;
function g(a,b:longint):longint;
var
    i:longint;
begin
    g:=0;
    for i:=a to b do
        if atmp[i]>0 then g:=g+atmp[i]
        else g:=g+atmp[i];
    g:=(g+100000) mod 10;
end;
procedure question_min;
var
    t,i,j,k,tmp,min:longint;
begin
    min:=maxlongint;
    for t:=1 to n do
    begin
        for i:=1 to n do atmp[i]:=a[(i+t-1) mod n];
        atmp[n-t+1]:=a[n];f[0,1]:=atmp[1];
        for i:=1 to n do f[0,i]:=g(1,i);
        for i:=1 to m-1 do
            for j:=i+1 to n do
            begin
                f[i,j]:=maxlongint;
                for k:=i to j-1 do
                begin
                    tmp:=g(k+1,j);
                    if f[i,j]>tmp*f[i-1,k] then f[i,j]:=tmp*f[i-1,k];
                end;
            end;
        if f[m-1,n]<min then min:=f[m-1,n];
    end;
    writeln(min);
end;
procedure question_max;
var
    t,i,j,k,tmp,max:longint;
begin
    max:=0;
    for t:=1 to n do
    begin
        for i:=1 to n do atmp[i]:=a[(i+t-1) mod n];
        atmp[n-t+1]:=a[n];f[0,1]:=atmp[1];
        for i:=1 to n do f[0,i]:=g(1,i);
        for i:=1 to m-1 do
            for j:=i+1 to n do
            begin
                f[i,j]:=0;
                for k:=i to j-1 do
                begin
                    tmp:=g(k+1,j);
                    if f[i,j]<tmp*f[i-1,k] then f[i,j]:=tmp*f[i-1,k];
                end;
            end;
        if f[m-1,n]>max then max:=f[m-1,n];
    end;
    writeln(max);
end;
begin
    assign(input,'game.in');reset(input);
    assign(output,'game.out');rewrite(output);
    readln(n,m);
    for i:=1 to n do readln(a[i]);
    question_min;
    question_max;
    close(input);
    close(output);
end.
