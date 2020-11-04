program p1160;
var s:string;a:array[1..100000]of char;
    i,j,top:longint;ch:char;
begin
  readln(s);
  top:=0;i:=1;ch:=s[i];
  while i<=length(s) do
    begin
      case ch of
      '(':begin
            top:=top+1;a[top]:='(';
          end;
      '[':begin
            top:=top+1;a[top]:='[';
          end;
      ')':if a[top]='(' then top:=top-1
                        else begin writeln('Wrong');halt;end;
      ']':if a[top]='[' then top:=top-1
                         else begin writeln('Wrong');halt;end;
      end;
      i:=i+1;ch:=s[i];
    end;
  if top=0 then writeln('OK') else writeln('Wrong');readln;
end.

