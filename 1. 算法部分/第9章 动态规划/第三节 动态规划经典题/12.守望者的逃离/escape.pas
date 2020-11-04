


var 
m,s,t,ti:longint; 
ms:array[1..2,0..300000] of longint; 
ts:array[0..300000] of longint; 
begin 
assign(input,'escape.in'); reset(input);
assign(output,'escape.out'); rewrite(output);
readln(m,s,t); 
ms[2,0]:=m; 
ts[0]:=0; 
for ti:=1 to t do {动态规划} 
begin 
if ms[2,ti-1]>=10 then {如果能使用闪烁，就是用} 
begin 
ms[1,ti]:=ms[1,ti-1]+60; 
ms[2,ti]:=ms[2,ti-1]-10; 
end 
else 
begin 
ms[1,ti]:=ms[1,ti-1]; {恢复魔法值} 
ms[2,ti]:=ms[2,ti-1]+4; 
end; 
if ts[ti-1]+17>ms[1,ti] then ts[ti]:=ts[ti-1]+17 else ts[ti]:=ms[1,ti]; {找出大的值} 
if ts[ti]>=s then {如果顺利逃出，输出结果} 
begin 
writeln('Yes'); 
writeln(ti); 
close(output);
halt; 
end; 
end; 
writeln('No'); {无法逃出，输出结果} 
writeln(ts[t]); 
close(output);
end. 