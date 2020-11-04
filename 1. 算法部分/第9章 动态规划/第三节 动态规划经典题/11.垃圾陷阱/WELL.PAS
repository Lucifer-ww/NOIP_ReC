program well;
const
     maxd=125;
     maxh=4010;
var
     d,g:integer;
     t,f,h:array[1..100]of integer;
     a :array[0..maxd,1..maxh]of boolean;

procedure swap(var a,b:integer);
  var c:integer;
  begin
     c:=a;a:=b;b:=c;
  end;

procedure init;
  var k,i,j:integer;
  begin
     readln(d,g);
     for k:=1 to g do readln(t[k],f[k],h[k]);
     for i:=1 to g-1 do
       for j:=i+1 to g do
         if t[i]>t[j] then
         begin
            swap(t[i],t[j]);
            swap(f[i],f[j]);
            swap(h[i],h[j]);
         end;
  end;

procedure main;
var
   k,i,j,mh:integer;
begin
     mh:=0;
     for i:=1 to g do if t[i]>mh then mh:=t[i];
     inc(mh,10);
     for i:=1 to g do inc(mh,f[i]);
     fillchar(a,sizeof(a),0);
     a[0,10]:=true;
     for k:=1 to g do
      for i:=d-1 downto 0 do
       for j:=mh downto t[k] do
        if a[i,j] then
        begin
                    a[i+h[k]][j]:=true;
                    if (i+h[k]>=d) then
                       begin
                            writeln(t[k]);
                            exit;
                       end;
                    a[i][j+f[k]]:=true;
        end;
     for j:=mh downto 1 do if a[0,j] then
      begin writeln(j); exit end;
end;

begin
     assign(input,'well.in');
     reset(input);
     assign(output,'well.out');
     rewrite(output);
     init;
     main;
     close(input);
     close(output);
end.
