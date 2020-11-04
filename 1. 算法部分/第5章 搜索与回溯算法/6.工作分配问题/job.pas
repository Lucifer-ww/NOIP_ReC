program job;
var
   n,i,j,max:integer;
   a:array[0..1000,0..1000] of integer;
   b:array[0..1000] of boolean;
 procedure search(t,s:integer);
 var
    i:integer;
 begin
      if s>max then exit;
      for i:=1 to n do
        if b[i] then
          begin
            b[i]:=false;
            s:=s+a[t,i];
            if t<n then search(t+1,s)
              else if s<max then max:=s;
            b[i]:=true;
            s:=s-a[t,i]
          end;
 end;
begin
     //assign(input,'job.in');reset(input);
     //assign(output,'job.out');rewrite(output);
     readln(n);
     for i:=1 to n do
       for j:=1 to n do read(a[i,j]);
     fillchar(b,sizeof(b),#1);
     max:=maxint;
     search(1,0);
     writeln(max);
     readln;readln;
     //close(input);close(output);
end.
