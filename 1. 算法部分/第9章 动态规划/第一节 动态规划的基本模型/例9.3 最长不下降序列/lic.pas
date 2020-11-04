program ex9_3;
var  n,i,L,k,j:integer;
     b:array[1..100,1..3]of integer;
begin
  assign(input,'lic.in');reset(input);
  assign(output,'lic.out');rewrite(output);
  n := 0;                //初始化，读入数据
  while not eoln do
   begin               //eoln：行结束标志
     inc(n);
      read(b[n,1]);
      b[n,2]:=1;b[n,3]:=0;
   end;

  for i:=n-1 downto 1 do    //求最长不下降序列
      begin
         L:=0;k:=0;
         for j:=i+1 to n do
         if(b[j,1]>b[i,1])and(b[j,2]>L) then begin
                                           L:=b[j,2];
                                           k:=j;
                                         end;
         if L>0 then begin
                        b[i,2]:=L+1;b[i,3]:=k;
                     end;
      end;
      k:=1;
      for j:=1 to n do        //求最长不下降序列的起始位置
         if b[j,2]>b[k,2] then k:=j;
      writeln('max=',b[k,2]);  //输出结果
      while k<>0  do        //输出最长不下降序列
        begin
          write(b[k,1],' ');
          k:=b[k,3];
        end;
      writeln;
      close(input);close(output);
end.
