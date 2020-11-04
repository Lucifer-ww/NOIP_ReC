type sj=array[1..10001]of longint;
var x,y:array[1..10001]of longint;
    i,mid,step,n,a,min:longint;
procedure setio;
begin
    assign(input,'sol.in');
    assign(output,'sol.out');
    reset(input);
    rewrite(output);
end;
procedure print;
begin
    close(input);
    close(output);
end;
procedure px(l,r:longint; var y:sj);
var i,j,m,t:longint;
begin
	i:=l; j:=r; m:=y[(l+r)div 2];
	repeat
	 while y[i]<m do inc(i);
	 while y[j]>m do dec(j);
	 if i<=j then
	  begin
	  	t:=y[i]; y[i]:=y[j]; y[j]:=t;
          	inc(i); dec(j);
	  end;
	until i>j ;
	if l<j then px(l,j,y);
	if r>i then px(i,r,y);
end;
begin
    setio;
    readln(n);
    for i:=1 to n do
     read(x[i],y[i]);
    px(1,n,y);
    mid:=y[n div 2+1];
    step:=0;
    for i:=1 to n do
     step:=step+abs(y[i]-mid);
    px(1,n,x);
    for i:=1 to n do
      x[i]:=x[i]-i+1;
    px(1,n,x);
    mid:=x[n div 2+1];
    for i:=1 to n do
     step:=step+abs(x[i]-mid);
    writeln(step);
    print;
end.

