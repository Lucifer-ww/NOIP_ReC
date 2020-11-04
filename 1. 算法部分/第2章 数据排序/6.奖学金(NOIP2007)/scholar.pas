var n,i,j,p:integer;
    c,m,e,s,x:array[1..500]of longint;

procedure setio;
begin
   assign(input,'scholar.in');
   reset(input);
   assign(output,'scholar.out');
   rewrite(output);
end;
procedure print;
begin
    close(input);
    close(output);
end;
procedure jh(var i,j:longint);
var t:longint;
begin
    t:=i; i:=j; j:=t;
end;
begin
    setio;
    readln(n);
    for i:=1 to n do
      begin
        readln(c[i],m[i],e[i]);
        s[i]:=c[i]+m[i]+e[i];
      end;
    for i:=1 to n do x[i]:=i;
    for i:=1 to n-1 do
      begin
        p:=i;
        for j:=i+1 to n do
           if (s[j]>s[p])or((s[j]=s[p])and(c[j]>c[p])) then p:=j;
        jh(s[p],s[i]);
        jh(x[p],x[i]);
        jh(c[p],c[i]);
      end;
    for i:=1 to 5 do
      writeln(x[i],' ',' ',s[i]);
    print;
end.

