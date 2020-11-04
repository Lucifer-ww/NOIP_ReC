var
        l,r:extended;

function ans(x:extended):extended;
begin
        exit(exp(x*ln(2))+exp(x*ln(3))-exp(x*ln(4)));
end;

begin
        assign(input,'equation.out');reset(input);
        assign(output,'equation1.out');rewrite(output);
        readln(l,r);
        while r-l>0.00000000001 do
                if ans((l+r)/2)>0 then l:=(l+r)/2
                        else r:=(l+r)/2;
        writeln(l);
        close(input);
        close(output);
end.