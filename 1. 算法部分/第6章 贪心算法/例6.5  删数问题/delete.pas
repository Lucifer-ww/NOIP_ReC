program dele;
var
   n:string;
   s,k,i:integer;
begin
   assign(input,'delete.in');reset(input);
   assign(output,'delete.out');rewrite(output);
   readln(n);
   readln(s);
   while s>0 do
    begin
      i:=1;
      while (length(n)>i)and(n[i]<=n[i+1]) do i:=i+1;
      delete(n,i,1);
      s:=s-1;
     end;
    while (length(n)>0)and(n[1]='0') do delete(n,1,1);
    writeln(n);
    close(input);close(output);
end.