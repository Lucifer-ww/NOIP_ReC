var a:array[1..10000] of longint;
    x,b:longint; n1,n2:ansistring;
    lena:longint; code,i,j:longint;
begin
  assign(input,'yubikili.in'); assign(output,'yubikili.out');
  reset(input); rewrite(output);
  readln(n1);
  readln(n2);
  if (n2<=n1)and(length(n2)<length(n1)) then begin writeln(n2); close(input); close(output); halt; end;
  lena:=length(n2);
  for i:=1 to lena do a[i]:=ord(n2[i])-ord('0');
  val(n1,b,code);
  x:=0;
  for i:=1 to lena do x:=(x*10+a[i]) mod b;
  if x=0 then writeln(n1)
  else
  writeln(x);
  close(input); close(output);
end.