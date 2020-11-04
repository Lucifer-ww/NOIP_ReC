var
    a:array[0..10] of longint;
    n,v,i:longint;
function find(n,v:longint):boolean;
var
  i:longint;
begin
   find:=false;
   if v<0 then exit(false);
   if v=0 then exit(true);
   for i:=n-1 downto 1 do
   begin
      if find(i,v-a[i]) then
      begin
         find:=true;
         break;
      end;
   end;
      if find then
   begin
      writeln('number:',i,'  weight:',a[i]);
   end
end;

Begin
     assign(input,'snap.in');   reset(input);
     assign(output,'snap.out');  rewrite(output);
     readln(n,v);
     for i:=1 to n do
       read(a[i]);
     if not find(n+1,v)  then writeln('not found');
     close(input);
     close(output);
End.
