var
   n:longint;

procedure hanoi(n:longint;a,b,c:char);
begin
   if n=1 then writeln(n,' ',a,' ',b)
   else
   begin
      hanoi(n-1,a,c,b);
      writeln(n,' ',a,' ',b);
      hanoi(n-1,c,b,a);
   end;
end;

Begin
     assign(input,'hanoi.in');   reset(input);
     assign(output,'hanoi.out');  rewrite(output);
     readln(n);
     hanoi(n,'A','B','C');
     readln;
     close(input);close(output);
end.
