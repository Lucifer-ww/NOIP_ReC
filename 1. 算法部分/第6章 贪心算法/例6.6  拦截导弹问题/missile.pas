program missile;
var
   i,j,k,p,n:longint;
   a:array [1..1000] of longint;
   L:array [1..100] of integer;
begin
  assign(input,'missile.in');reset(input);
  assign(output,'missile.out');rewrite(output);
  n:=0;
  while not(eoln()) do
    begin
      n:=n+1;
      read(a[n]);
    end;
  k:=1;L[k]:=a[1];
  for i:=2 to n do
    begin
      p:=0;
      for j:=1 to k do
        if a[i]<=L[j] then if p=0 then p:=j
                            else if L[p]>L[j] then p:=j;
      if p=0 then begin k:=k+1;L[k]:=a[i];end
             else L[p]:=a[i];
    end;
  writeln(k);
  close(input);close(output);
end.