Var
    s:string;
procedure doit(i:longint);
begin
   if i=0 then exit;
   write(s[i]);
   doit(i-1);
end;
Begin
     Assign(input,'num.in');   reset(input);
     Assign(output,'num.out');  rewrite(output);
     readln(s);
     doit(length(s));
     Close(input);
     Close(output);
End.
