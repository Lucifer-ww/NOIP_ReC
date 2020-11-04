program hh;
var c,n,i:longint;
   a,d:array[1..1000000] of longint;
   b:array[1..1000000] of boolean;
procedure print(t:longint);
var i,j:longint;
begin
 for i:=1 to t do write(d[i],' ');
 close(input);close(output);halt;
end;
procedure search(k,s:longint);
var j,i:longint;
begin
 if s>c then exit;
 if k>n then begin writeln('No Solution!');close(input);close(output);halt; end;
 for i:=1 to n do
   if b[i] then
    begin
      b[i]:=false;
      d[k]:=a[i];
      s:=s+a[i];
      if s=c then print(k)
                else search(k+1,s);
      b[i]:=true;
      s:=s-a[i];
    end;
end;
begin
 //assign(input,'subsum.in'); reset(input);
 //assign(output,'subsum.out');  rewrite(output);
 readln(n,c);
 for i:=1 to n do read(a[i]);
 fillchar(b,sizeof(b),true);
 search(1,0);
 //close(input);close(output);
 end.
