var
    a:Array[0..1000]of longint;
    b:array[1..1000]of boolean;
    n,i,j,c,max:longint;
procedure search(s,t:longint);
var i,j:longint;
 begin
  if s>c then exit;
  if s>max then max:=s;
  for i:=1 to n do
   begin
   if b[i] then
    begin
     b[i]:=false;
     s:=s+a[i];
     if s=c then begin writeln(c);halt;end
            else search(s,t+1);
     b[i]:=true;
     s:=s-a[i];
    end;
   end;
 end;
 begin
   assign(input,'load.in');reset(input);
   assign(output,'load.out');rewrite(output);
   readln(n,c);
   for i:=1 to n do
      begin read(a[i]);b[i]:=true;end;
   search(0,1);
   writeln(max);
   close(input);close(output);
 end.
