program tree_C;
var i:longint;
    s:string;
begin
    assign(input,'tree_c.in');reset(input);
    assign(output,'tree_c.out');rewrite(output);
    readln(s);
    close(input);
    if length(s) mod 2=0 then
    begin writeln('No');close(output);halt;end;
    for i:=1 to length(s) div 2 do
     if s[2*i]='#' then
      if s[2*i+1]<>'#' then
      begin writeln('No');close(output);halt;end;
    writeln('Yes');
    close(output);
end.
