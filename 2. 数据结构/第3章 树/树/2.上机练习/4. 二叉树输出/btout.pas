program btout;
var i,j,m,n:longint;
    s,s1:string;
    w:array['A'..'z']of longint;
    lchild,rchild:array['A'..'z']of char;
procedure zjc(l,r,l1,r1:longint);
var m:longint;bo:boolean;
begin
    m:=pos(s[l],s1);
    bo:=false;
    if m>l1 then
     begin bo:=true;lchild[s[l]]:=s[l+1];zjc(l+1,l+m-l1,l1,m-1); end;
    if m<r1 then
     begin bo:=true;zjc(l+m-l1+1,r,m+1,r1);rchild[s[l]]:=s[l+m-l1+1];end;
    if bo=false then w[s[l]]:=1
    else w[s[l]]:=w[lchild[s[l]]]+w[rchild[s[l]]];
end;
begin
    assign(input,'btout.in');reset(input);
    assign(output,'btout.out');rewrite(output);
    readln(s);
    readln(s1);
    zjc(1,length(s),1,length(s1));
    for i:=1 to length(s) do
    begin
      for j:=1 to w[s[i]] do
      write(s[i]);
      writeln;
    end;
    close(input);close(output);
end.