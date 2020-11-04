Program	tsoi_standard;
{ tsoi2 Diablo }

Const
inf	='diablo.in';
ouf	='diablo.out';
LimitN	=100;
LimitM	=500;
LimitP	=50;

Var
f,d	:array[0..LimitN,0..LimitM]of longint;
c	:array[1..LimitN]of longint;
w	:array[1..LimitP]of longint;
i,j,k	:longint;
p,t	:longint;
n,m	:longint;

procedure	show(x,y:longint);
var
t	:longint;
begin
	if x>1 then
		show(x-1,y-d[x][y]*c[x]);
	writeln(d[x][y]);
end;

Begin
	assign(input,inf);
	reset(input);
	read(n,m);
	for i:=1 to n do
	begin
		read(c[i],p);
		for j:=1 to p do
			read(w[j]);
		for j:=1 to m do
		begin
			t:=0;
			f[i][j]:=f[i-1][j];
			for k:=1 to p do
			begin
				inc(t,c[i]);
				if t>j then break;
				if f[i-1][j-t]+w[k]>f[i][j] then
				begin
					f[i][j]:=f[i-1][j-t]+w[k];
					d[i][j]:=k;
				end;
			end;
		end;
	end;
	close(input);
	assign(output,ouf);
	rewrite(output);
	k:=-1;
	for i:=0 to m do
		if f[n][i]>k then
		begin
			k:=f[n][i];
			j:=i;
		end;
	writeln(f[n][j]);
	show(n,j);
	close(output);
End.
