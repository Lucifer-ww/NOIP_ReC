type
        xx=record
                x,y:longint;
        end;
var
        m,n,
        i,j,k,sum,r,h       :longint;
        q                       :array[0..10001]of xx;
        a                       :array[0..100,0..100]of boolean;
        u                       :array[1..4]of integer=(1,-1,0,0);
        v                       :array[1..4]of integer=(0,0,-1,1);
        x                       :char;

        procedure bfs(i,j:longint);
        begin
                h:=0;r:=1;q[1].x:=i;q[1].y:=j;a[i,j]:=false;
                while h<r do
                begin
                        inc(h);
                        for k:=1 to 4 do
                        if  a[q[h].x+u[k],q[h].y+v[k]] then
                        begin
                                inc(r);
                                q[r].x:=q[h].x+u[k];q[r].y:=q[h].y+v[k];
                                a[q[r].x,q[r].y]:=false;
                        end;
                end;
        end;

begin
        assign(input,'cell.in'); 	reset(input);
	assign(output,'cell.out'); 	rewrite(output);
        readln(m,n);
        for i:=1 to m do
        begin
                for j:=1 to n do
                begin
                        read(x);
                        if ord(x)>ord('0') then a[i,j]:=true
                        else a[i,j]:=false;
                end;
                readln;
        end;
        for i:=1 to m do
          for j:=1 to n do
            if a[i,j] then
            begin
                inc(sum);
                bfs(i,j);
            end;
        writeln(sum);
        close(input);
        close(output);
end.
