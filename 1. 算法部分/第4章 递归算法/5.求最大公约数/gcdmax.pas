Var
   a,b:longint;
function gcd(a,b:longint):longint;
var
   i:longint;
begin
    i:=a mod b;
    if i=0 then exit(b)
    else exit(gcd(b,i));
end;
Begin
     assign(input,'gcdmax.in');   reset(input);
     assign(output,'gcdmax.out');  rewrite(output);
     readln(a,b);
     writeln('gcd=',gcd(a,b));
     close(input);
     close(output);
End.
