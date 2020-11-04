program fbi;
var p,i,j,n,m:longint;
    z,w,s,ss,e,q:ansistring;
begin
    assign(input,'fbi.in');reset(input);
    assign(output,'fbi.out');rewrite(output);
    readln(n);
    if n=0 then begin writeln('B');close(input);close(output);halt;end;
    readln(z);
    m:=length(z);
    for i:=1 to m do
     case z[i] of
     '1':s:=s+'I';
     '0':s:=s+'B';
     end;
    w:=s;
    m:=m div 2;
    p:=2;
    repeat
      e:='';ss:='';
      for i:=1 to m do
       begin
        q:=copy(w,i*2-1,2);
        if q='BB' then e:=e+'B'
        else if q='II' then e:=e+'I'
        else e:=e+'F';
       end;
      for i:=1 to m do
      ss:=ss+copy(s,(i-1)*p+1,p)+copy(e,i,1);
      p:=(p+1)*2;
      w:=e;
      s:=ss;
      m:=m div 2;
     until m=0;
     writeln(s);
     close(input);close(output);
end.