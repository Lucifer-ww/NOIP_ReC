var f:array[0..6,0..200]of longint;
    n,k,i,j:longint;
begin
   assign(input,'divide.in');reset(input);
   assign(output,'divide.out');rewrite(output);
   readln(n,k);
   for i:=0 to n do f[1,i]:=1;
   for i:=2 to k do
    for j:=0 to n do
    begin
      f[i,j]:=f[i-1,j];
      if i<=j then f[i,j]:=f[i,j]+f[i,j-i];
    end;
   writeln(f[k,n-k]);
   close(input);close(output);
end.