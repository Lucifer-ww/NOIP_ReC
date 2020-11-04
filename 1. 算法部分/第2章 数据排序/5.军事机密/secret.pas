var n,i,x,k:longint;
    a:array[1..31000]of longint;
procedure setio;
begin
   assign(input,'secret.in');
   reset(input);
   assign(output,'secret.out');
   rewrite(output);
end;
procedure print;
begin
    close(input);
    close(output);
end;
procedure px(l,r:longint);
var i,j,m,t:longint;
begin
	i:=l; j:=r; m:=a[(l+r)div 2];
	repeat
	 while a[i]<m do inc(i);
	 while a[j]>m do dec(j);
	 if i<=j then
	  begin
	  	t:=a[i]; a[i]:=a[j]; a[j]:=t;
	  	inc(i); dec(j);
	  end;
	until i>j ;
	if l<j then px(l,j);
	if r>i then px(i,r);
end;
begin
    setio;
    readln(n);
    for i:=1 to n do read(a[i]);
    px(1,n);
    readln(k);
    for i:=1 to k do 
     begin
      read(x); writeln(a[x]);
     end;
    print;
end.