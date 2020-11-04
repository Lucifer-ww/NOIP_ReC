var
   n:longint;
function fbi(i:longint):longint;
begin
   if i=1 then exit(0)
   else if i=2 then exit(1)
   else exit(fbi(i-1)+fbi(i-2));
end;
begin
   assign(input,'fbi.in');  reset(input);
   assign(output,'fbi.out');   rewrite(output);
      readln(n);
      writeln(fbi(n));
   close(input);
   close(output);
end.
