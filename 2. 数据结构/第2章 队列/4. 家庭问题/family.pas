var
  n,l:longint;
  pd:array[1..100,1..100] of boolean;
  dl:array[1..10000] of longint;
  jl:array[1..100] of longint;
  pp:array[1..100] of boolean;
  i,j,k:longint;
  t,w,c:longint;
begin
  assign(input,'family.in');   reset(input);
  assign(output,'family.out'); rewrite(output);
  readln(n,l);
  fillchar(pd,sizeof(pd),false);
  fillchar(pp,sizeof(pp),true);
  for i:=1 to l do
    begin
      readln(t,w);
      pd[t,w]:=true;
      pd[w,t]:=true;
    end;
  for k:=1 to n do
    begin
      dl[1]:=k;
      t:=1;
      w:=1;
      c:=0;
      repeat
        for i:=1 to n do
          if pd[dl[t],i] and (pp[i]) then
            begin
              inc(w);
              dl[w]:=i;
              pp[i]:=false;
              pd[dl[t],i]:=false;
              pd[i,dl[t]]:=false;
              inc(c);
            end;
        inc(t);
      until t>w;
      if c<>0 then jl[k]:=c+1;
      if (c=0) and pp[k] then begin jl[k]:=1; pp[k]:=false; end;
    end;
  c:=0;
  k:=0;
  for i:=1 to n do
    begin
      if jl[i]<>0 then
        inc(c);
      if jl[i]>k then
        k:=jl[i];
    end;
  writeln(c,' ',k);
  close(input);
  close(output);
end.