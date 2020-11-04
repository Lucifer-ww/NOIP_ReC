var
  n,ks,js:longint;
  k:array[1..200] of longint;                //每层数字ki
  pd:array[1..200] of boolean;               //判断该楼层到过了没有
  i,j:longint;
  t,w,l:longint;
  q:array[1..10000,1..2] of longint;         //把可能到过楼层的入队

procedure print(t:longint);
var
  i,j:longint;
begin
  if q[t,2]<>0 then print(q[t,2]);
  inc(l);
end;

begin
  assign(input,'lift.in');  reset(input);
  assign(output,'lift.out');rewrite(output);
  readln(n,ks,js);
  for i:=1 to n do
    read(k[i]);
  fillchar(pd,sizeof(pd),true);
  pd[ks]:=false;
  q[1,1]:=ks;
  t:=1;                                     //队头指针
  w:=1;                                     //队尾指针
  repeat
    if q[t,1]=js then
      begin
        print(t);
        writeln(l-1);
        close(input);
        close(output);
        halt;
      end;
    if k[q[t,1]]<>0 then                     //若ki=0，则电梯就不动。
      begin
        if q[t,1]+k[q[t,1]]<=n then          //电梯向上不能超过顶楼
          if pd[q[t,1]+k[q[t,1]]] then       //该楼层没到过
          begin
            inc(w);                          //入队
            q[w,1]:=q[t,1]+k[q[t,1]];
            q[w,2]:=t;                       //记下队头指针
            pd[q[w,1]]:=false;               //标记该楼层到过
          end;
        if q[t,1]-k[q[t,1]]>=1 then          //电梯向下不能超过一楼
          if pd[q[t,1]-k[q[t,1]]] then       //该楼层没到过
          begin
            inc(w);                          //入队
            q[w,1]:=q[t,1]-k[q[t,1]];
            q[w,2]:=t;                       //记下队头指针
            pd[q[w,1]]:=false;               //标记该楼层到过
          end;
      end;
    inc(t);                                  //出队
  until t>w;
  writeln('-1');
  close(input);
  close(output);
end.