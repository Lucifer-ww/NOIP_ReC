program perm;
var a:array['a'..'z'] of longint;
    i,n,tot:longint;
    ch:char;
    c:array[1..500] of char;
procedure go(i:longint);
var j:char;
    k:longint;
begin
 for j:='a' to 'z' do
 if a[j]>0 then
 begin
  a[j]:=a[j]-1;
  c[i]:=j;
  if i<n then go(i+1)
  else
    begin
      tot:=tot+1;
      for k:=1 to n do write(c[k]);
      writeln;
    end;
  a[j]:=a[j]+1;
 end;
end;
begin
 assign(input,'perm.in'); reset(input);
 assign(output,'perm.out');rewrite(output);
 readln(n);
 for i:=1 to n do
 begin
  read(ch);
  a[ch]:=a[ch]+1;
 end;
 go(1);
 writeln(tot);
 close(input); close(output);
end.
