program flist;
var i,j,n,m:longint;
    s,s1,ss:string;
    a:array['A'..'z']of longint;
procedure zjc(st,en:longint);
var min,i,z:longint;
begin
    min:=maxlongint;
    for i:=st to en do
    if a[s[i]]<min then begin min:=a[s[i]];z:=i;end;
    write(s[z]);
    if z>st then zjc(st,z-1);
    if z<en then zjc(z+1,en);
end;
begin
    assign(input,'flist.in');reset(input);
    assign(output,'flist.out');rewrite(output);
    readln(s);
    readln(s1);
    for i:=1 to length(s1) do
    a[s1[i]]:=i;
    zjc(1,length(s));
    close(input);close(output);
end.
