program czx;
var  a,b,c:array [1..1000]  of longint;
     f:array [0..100,0..100] of longint;
     m,n,k,i,j,l,t1,t2:longint;
begin
   assign(input,'gas.in');
   assign(output,'gas.out');
   reset(input);rewrite(output);
   fillchar(f,sizeof(f),$7f);
   readln(m,n);
   readln(k);
   for i:=1 to k do readln(a[i],b[i],c[i]);
   f[0,0]:=0;
   for i:=1 to k do
     for j:=m downto 0 do
       for l:=n downto 0 do
         begin
           if j+a[i]>m then t1:=m else t1:=j+a[i];
           if l+b[i]>n then t2:=n else t2:=l+b[i];
           if f[j,l]+c[i]<f[t1,t2] then f[t1,t2]:=f[j,l]+c[i];
         end;
   writeln(f[m,n]);
   close(input);close(output);
end.
