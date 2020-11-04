program book;
 type
  rec=record
       num,pos:longint;
      end;
 var
  m,k,i:longint;
  bo:array[1..550]of longint;
  data:array[1..550,0..550]of rec;
 procedure qiu(be,pe:longint);
  var
   i,t,tt,j,t2:longint;
  begin
   if (pe=0)and(be<=m) then
    begin
     data[be,pe].num:=maxlongint;exit;
    end else
   if (pe=0)and(be>m) then
    begin
     data[be,pe].num:=0;exit;
    end;
   t:=0;
   tt:=maxlongint;
   for i:=be to m-pe+1 do
    begin
     t:=t+bo[i];
     if data[i+1,pe-1].num=0 then qiu(i+1,pe-1);
     if data[i+1,pe-1].num>t then t2:=data[i+1,pe-1].num else t2:=t;
     if t2<tt then begin tt:=t2;j:=i;end;
    end;
   data[be,pe].num:=tt;
   data[be,pe].pos:=j;
  end;
 procedure print;
  var
   i,j:longint;
  begin
   write(1,' ');
   i:=1;
   j:=k;
   while j>1 do
    begin
    writeln(data[i,j].pos);
    write(data[i,j].pos+1,' ');
    i:=data[i,j].pos+1;
    j:=j-1;
    end;
   writeln(m);
  end;
 begin
  assign(input,'book.in');
  assign(output,'book.out');
  reset(input);rewrite(output);
  read(m,k);
  if (m=k)and(m=0) then
   begin
    close(output);halt;
   end;
  for i:=1 to m do
   begin
    read(bo[i]);
   end;
  qiu(1,k);
  print;
  close(output);
 end.
