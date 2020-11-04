var
 a:array[1..300]of char;
 s:string;
 i,j,l,k,t,tt:integer;
 procedure try(ss:char);
   begin
    if t=0 then  begin inc(t); a[t]:=ss;exit;end;
    if (ss=')')and(a[t]='(') then
      begin
       dec(t);
       exit;
      end;
    inc(t);
    a[t]:=ss;
   end;

begin
assign(input,'stack.in');
reset(input);
assign(output,'stack.out');
rewrite(output);
 read(s);
 l:=length(s);
 t:=0;
 i:=1;
 while (i<=l)and(s[i]<>'@' ) do
  begin
   if (s[i]='(')or(s[i]=')') then
    try(s[i]);
   inc(i);
  end;
  if t=0 then writeln('YES')else writeln('NO');
  close(input);
  close(output);
end.