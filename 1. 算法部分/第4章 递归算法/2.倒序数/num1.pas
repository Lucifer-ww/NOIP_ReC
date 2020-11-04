program ex4_3;
var n:longint;
procedure  resever(n:longint);
var nr,nl:longint;
  begin  
         nr:=n mod 10;
         write(nr);
         nl:=n div 10;
         if nl<>0 then resever(nl);
  end;
begin
  assign(input,'num.in');reset(input);
  assign(output,'num.out');rewrite(output);
  readln(n);
  resever(n);
  writeln;
  close(input);close(output);
end.