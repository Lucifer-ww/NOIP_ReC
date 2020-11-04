program tree_1;
var i,j,n,t,x,ans:longint;
    lchild,rchild,a:array[0..100]of longint;
procedure zjc(l:longint);
  begin
   if lchild[l]<>0 then zjc(lchild[l]);
   inc(t);
   if a[l]=x then ans:=t;
   if rchild[l]<>0 then zjc(rchild[l]);
  end;
begin
   assign(input,'tree_A.in');reset(input);
   assign(output,'tree_A.out');rewrite(output);
   readln(n);
   readln(x);
   for i:=1 to n do
     readln(a[i],lchild[i],rchild[i]);
   zjc(1);
   writeln(ans);
   close(input);close(output);
end.
