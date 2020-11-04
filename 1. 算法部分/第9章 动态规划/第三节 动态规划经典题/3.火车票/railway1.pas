program railway(input,output);
const max=100;
type fromlist=array[1..max] of integer;
     list=array[1..max] of longint;
var c1,c2,c3,l1,l2,l3,c : longint;
    n,f,t,i : integer;
    dist,cost : list;
    from1,from2,from3 : fromlist;

procedure getfrom(var from : fromlist; l1 : longint);
var i,j : integer;
begin
  fillchar(from,sizeof(from),0);
  j := n;
  for i := n downto f + 1 do
    begin
      repeat dec(j)
      until (j < f) or (dist[i] - dist[j] > l1);
      inc(j);
      if j <> i then from[i] := j
    end;
end;

begin
  assign(input, 'railway.in');  reset(input);
assign(output,'railway.out');rewrite(output);
  readln(l1,l2,l3,c1,c2,c3);
  readln(n);
  readln(f,t);
  if f > t then
    begin
      i := f;
      f := t;
      t := i
    end;
  dist[1] := 0; 
  for i := 2 to n do readln(dist[i]);
  getfrom(from1,l1);
  getfrom(from2,l2);
  getfrom(from3,l3);
  cost[f] := 0;
  for i := f + 1 to t do
  begin
    cost[i] := 1000000001;
    if (from1[i] <> 0) and (cost[from1[i]] + c1 < cost[i])
      then cost[i] := cost[from1[i]] + c1;
    if (from2[i] <> 0) and (cost[from2[i]] + c2 < cost[i])
      then cost[i] := cost[from2[i]] + c2;
    if (from3[i] <> 0) and (cost[from3[i]] + c3 < cost[i])
      then cost[i] := cost[from3[i]] + c3
  end;
  writeln(cost[t]);
  close(input);  
  close(output);
end.
