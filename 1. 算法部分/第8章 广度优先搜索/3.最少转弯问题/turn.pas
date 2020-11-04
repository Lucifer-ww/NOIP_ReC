type
        xx=record
                x,y,st:longint;
        end;
var
        n,m,i,j,x1,x2,x0,y1,y2,y0,h,r,k :longint;
        a                               :array[0..100,0..100]of integer;
        mark                            :array[0..100,0..100]of boolean;
        q                               :array[0..10000]of xx;
        u                               :array[1..4]of integer=(1,-1,0,0);
        v                               :array[1..4]of integer=(0,0,1,-1);

        procedure bfs;
        begin
                h:=0;r:=1;q[1].x:=x1;q[1].y:=y1;q[1].st:=0;
                while h<r do
                begin
                        inc(h);
                        for k:=1 to 4 do
                        begin
                                x0:=q[h].x+u[k];y0:=q[h].y+v[k];
                                if (not mark[x0,y0]) then
                                        while a[x0,y0]=0 do
                                        begin
                                                inc(r);
                                                q[r].x:=x0;q[r].y:=y0;q[r].st:=q[h].st+1;
                                                mark[x0,y0]:=true;
                                                if (x0=x2)and(y0=y2) then
                                                begin
                                                        writeln(q[r].st-1);
                                                        exit;
                                                end;
                                                x0:=x0+u[k];
                                                y0:=y0+v[k];
                                        end;
                        end;
                end;
        end;

begin
        assign(input,'turn.in');        reset(input);
        assign(output,'turn.out');      rewrite(output);
        fillchar(a,sizeof(a),1);
        readln(n,m);
        for i:=1 to n do
        begin
                for j:=1 to m do read(a[i,j]);
                readln;
        end;
        readln(x1,y1,x2,y2);
        bfs;
        close(input);   close(output);
end.
