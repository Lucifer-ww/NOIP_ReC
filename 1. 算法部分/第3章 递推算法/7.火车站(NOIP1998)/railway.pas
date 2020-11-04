var
 a,m,n,x,i,k,aa,xx,l,aaa,xxx:longint;
 s:real;

function fa(x:longint):longint;
begin
 if x=2 then exit(1)
 else if x=1 then exit(1)
 else fa:=fa(x-1)+fa(x-2);
end;

begin
 assign(input,'railway.in');
 reset(input);
 assign(output,'railway.out');
 rewrite(output);
 read(a,n,m,x);
 aa:=2;
 xx:=0;
 for i:=4 to n-1 do
 begin
  aa:=aa+fa(i-2)-fa(i-3);
  xx:=xx+fa(i-1)-fa(i-2);
  if i=x then
  begin
   aaa:=aa;
   xxx:=xx;
  end;
 end;
 s:=(m-aa*a)/xx;
 if s-trunc(s)<>0 then writeln('No answer.')
 else begin
       if x=1 then writeln(a)
       else if x=2 then writeln(a)
       else if x=3 then writeln(2*a)
       else begin
       l:=trunc(s);
       writeln(aaa*a+xxx*l);
       end;
      end;
 close(input);
 close(output);
end.
