var
  n,k:longint;
  pd:array[0..9,0..9] of boolean;                        //产生数规则
  pp:array[0..10000] of boolean;                         //存放产生数的队列
  i,j:longint;
  dl:array[1..100000,1..4] of longint;                   //产生数4位存放的队列
  t,w,c:longint;
begin
  assign(input,'produce.in');  reset(input);
  assign(output,'produce.out');rewrite(output);
  readln(n,k);
  fillchar(pp,sizeof(pp),true);
  pp[n]:=false;
  for i:=1 to k do
    begin
      readln(t,w);
      pd[t,w]:=true;
    end;
  dl[1,1]:=n mod 10;
  dl[1,2]:=n div 10 mod 10;
  dl[1,3]:=n div 100 mod 10;
  dl[1,4]:=n div 1000;
  t:=1;
  w:=1;
  repeat
    for i:=1 to 4 do
      for j:=0 to 9 do
        if pd[dl[t,i],j] then
          begin
            c:=dl[t,1]+dl[t,2]*10+dl[t,3]*100+dl[t,4]*1000;  //原来的数,如234
            c:=round(c-dl[t,i]*exp((i-1)*ln(10)));           //减变去的数,如2
            c:=round(c+j*exp((i-1)*ln(10)));                 //加变回的数,如5
            if pp[c] then                                    //该数没有产生过
              begin
                inc(w);                                      //入队新变的数
                dl[w,1]:=c mod 10;
                dl[w,2]:=c div 10 mod 10;
                dl[w,3]:=c div 100 mod 10;
                dl[w,4]:=c div 1000;
                pp[c]:=false;                               //标记该数产生过
              end;
          end;
    inc(t);                                                 //出队
  until t>w;
  t:=0;
  for i:=1 to 10000 do                                      //统计标记过产生数的个数
    if not pp[i] then inc(t);
  writeln(t);
  close(input);
  close(output);
end.
