var
  i,j,top,l,m,n:integer;
  a,b:array[0..1000]of integer;
  bo:boolean;
  s:string;

begin
  assign(input,'strs.in'); reset(input);
  assign(output,'strs.out'); rewrite(output);
  readln(n);
  for i:=1 to n do
  begin
    readln(s); bo:=true;
    for j:=1 to length(s) do
      case s[j] of
       '{':a[j]:=1;
       '[':a[j]:=2;
       '(':a[j]:=3;
       '<':a[j]:=4;
       '>':a[j]:=5;
       ')':a[j]:=6;
       ']':a[j]:=7;
       '}':a[j]:=8;
      end;
    top:=0;b[top]:=0;
    for j:=1 to length(s) do
    begin
      if (a[j]<5) and (a[j]>=b[top]) then begin top:=top+1; b[top]:=a[j]; end;
      if (a[j]>=5) then
        if (a[j]+b[top]<>9) then bo:=false
        else top:=top-1;
    end;
    if (top=0) and (bo) then writeln('YES')
    else writeln('NO');
  end;
  close(input); close(output);
end.
