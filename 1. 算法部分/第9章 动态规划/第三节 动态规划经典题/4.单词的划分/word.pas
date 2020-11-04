Program black;
var i,j,n,k:longint;
    l,t:string;
    s:array[0..100] of string;
    a:array[0..100] of integer;
    f:array[0..100] of integer;
begin
    assign(input,'word.in');   reset(input);
    assign(output,'word.out'); rewrite(output);
    fillchar(a,sizeof(a),0);
    fillchar(f,sizeof(f),$7f);
    readln(l);
    k:=length(l);
    readln(n);
    for i:=1 to n do
      begin
        readln(s[i]);
        a[i]:=length(s[i]);
      end;
    f[0]:=0;
    for i:=1 to k do
      for j:=1 to n do
        if (i-a[j])>=0 then
           if (copy(l,i-a[j]+1,a[j])=s[j]) and (f[i-a[j]]+1<f[i]) then f[i]:=f[i-a[j]]+1;
    writeln(f[k]);
    close(input); close(output);
end.
