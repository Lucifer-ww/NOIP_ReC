const haha=maxlongint;

var
        a,tr:array[0..100000] of longint;
        n,i,z,y,x,ans:longint;

function min(a,b:longint):longint;
begin
        if a>b then exit(b);
        exit(a);
end;

function build(l,r,nod:longint):longint;
begin
        if (l=r) then begin tr[nod]:=a[l];exit;end;
        build(l,(l+r) div 2,nod+nod);
        build((l+r) div 2+1,r,nod+nod+1);
        tr[nod]:=min(tr[nod+nod],tr[nod+nod+1]);
end;

function del(p,q:longint):longint;
begin
        if (tr[p+p]<>q)and(tr[p+p+1]<>q) then begin tr[p]:=haha;exit(p);end;
        if tr[p+p]=q then del:=del(p+p,q)
                else del:=del(p+p+1,q);
        tr[p]:=min(tr[p+p],tr[p+p+1]);
end;

function insert(p:longint):longint;
begin
        if p=0 then exit;
        tr[p]:=min(tr[p+p],tr[p+p+1]);
        insert(p div 2);
end;

begin
        assign(input,'fruit.in');reset(input);
        assign(output,'fruit.out');rewrite(output);
        readln(n);
        for i:=1 to 10000 do tr[i]:=haha;tr[0]:=-haha;
        for i:=1 to n do read(a[i]);
        build(1,n,1);
        for i:=1 to n-1 do
        begin
                x:=tr[1];del(1,x);
                y:=tr[1];z:=del(1,y);
                tr[z]:=x+y;inc(ans,tr[z]);
                insert(z div 2);
        end;
        writeln(ans);
        close(input);
        close(output);
end.