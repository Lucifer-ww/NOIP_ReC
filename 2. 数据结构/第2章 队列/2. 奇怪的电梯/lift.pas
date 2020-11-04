var
  a,b,t,h,n,i:integer;
  q,d,k:array[1..1000]of integer;  //q为队列，k为楼层数字，d为乘电梯次数
  s:set of 1..200;                 //到过楼层放入集合
begin
  assign(input,'lift.in');reset(input);
  assign(output,'lift.out');rewrite(output);
  read(n,a,b);
  for i:=1 to n do
    read(k[i]);
  h:=0;                            //队头指针
  t:=1;                            //队尾指针
  q[1]:=a;
  repeat
    inc(h);
    for i:=-1 to 1 do              //上楼或下楼
      if (q[h]+k[q[h]]*i>0) and not (q[h]+k[q[h]]*i in s) then
        begin                      //满足楼层要求且没到过
          inc(t);
          s:=s+[q[h]+k[q[h]]*i];   //放入集合
          q[t]:=q[h]+k[q[h]]*i;    //入队
          d[t]:=d[h]+1;            //记录乘电梯次数
        end;
  until (h=t) or (q[t]=b);
  if a=b then
    writeln(0)
  else
    if q[t]=b then                //到达指定楼层
      writeln(d[t])
    else
      writeln('-1');              //无法到达
  close(input);close(output);
end.