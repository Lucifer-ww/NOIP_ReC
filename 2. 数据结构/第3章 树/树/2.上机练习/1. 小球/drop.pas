program drop;
var i,z,k,d,j:longint;
    bo:array[0..800000]of boolean;
begin
    assign(input,'drop.in');reset(input);
    assign(output,'drop.out');rewrite(output);
    readln(d,i);
    fillchar(bo,sizeof(bo),#0);
    for k:=1 to i do
    begin
      z:=1;
      for j:=1 to d-1 do
       if bo[z] then begin bo[z]:=false;z:=z*2+1;end
       else begin bo[z]:=true;z:=z*2;end;
    end;
    writeln(z);
    close(input);close(output);
end.