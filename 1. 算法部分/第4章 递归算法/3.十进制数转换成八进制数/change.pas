Var
  n:longint;
procedure change(n:longint);
var
   i,j:longint;
begin
   if n=0 then exit;
   i:=n mod 8;
   j:=n div 8;
   change(j);
   write(i);
end;
Begin
     assign(input,'change.in');   reset(input);
     assign(output,'change.out');  rewrite(output);
     readln(n);
     change(n);
     close(input);
     close(output);
End.
