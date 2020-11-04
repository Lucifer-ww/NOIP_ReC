var
 i,v,k,n,m:longint;
 f:array[0..200]of longint;
 w,c:array[0..30]of longint;
begin
  fillchar(f,sizeof(f),0);
  readln(m,n);                //背包容量m和物品数量n
  f[0]:=0;
  for i:=1 to n do
    readln(w[i],c[i]);         //每个物品的重量和价值
  for i:=1 to n do   //设 f(v)表示重量不超过v公斤的最大价值
    for v:=w[i] to m do
     if f[v-w[i]]+c[i]>f[v] then f[v]:=f[v-w[i]]+c[i];
  writeln('max=',f[m]);
end.