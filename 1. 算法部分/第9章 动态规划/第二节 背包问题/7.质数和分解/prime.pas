var n,i,j:longint;
zhishu:boolean;
f:Array[0..100000]of longint;
begin
  assign(input,'prime.in'); reset(input);
  assign(output,'prime.out'); rewrite(output);
  readln(n);
  f[0]:=1;
  for i:=2 to n do begin
    zhishu:=true;
    for j:=2 to trunc(sqrt(i)) do if i mod j =0 then zhishu:=false;
    if zhishu then for j:=i to n do inc(f[j],f[j-i]);
  end;
  writeln(f[n]);
  close(output);
end.