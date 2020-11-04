Const Maxn=30000;
type
  Theap=array[0..Maxn]of longint;
var
  heap:Theap;
  n   :integer;
  score:longint;
function left(i:integer):integer;
begin
  left:=2*i;
end;
function right(i:integer):integer;
begin
  right:=2*i+1;
end;
function parent(i:integer):integer;
begin
  parent:=i div 2;
end;
procedure exchange(var x,y:longint);
var t:longint;
begin
  t:=x;x:=y;y:=t;
end;
procedure heapify(var a:Theap;i:integer);
var L,R,smallest:integer;
begin
  L:=left(i);R:=right(i);
  if (L<=a[0])and(a[L]<a[i])then smallest:=L else smallest:=i;
  if (R<=a[0])and(a[R]<a[smallest])then smallest:=R;
  if smallest<>i then
    begin
      exchange(a[smallest],a[i]);
      heapify(a,smallest);
    end;
end;
procedure init;
var i:integer;
begin
  readln(n);heap[0]:=n;
  for i:=1 to n do read(heap[i]);
  for i:=n div 2 downto 1 do heapify(heap,i);
end;
function heap_Min(var a:Theap):longint;
begin
  if a[0]=0 then exit;
  heap_min:=a[1];
  a[1]:=a[a[0]];
  dec(a[0]);heapify(a,1);
end;
procedure insert_heap(var a:Theap;key:longint);
var i:integer;
begin
  inc(a[0]);
  i:=a[0];
  while (i>1)and(a[parent(i)]>key) do
  begin
    a[i]:=a[parent(i)];i:=parent(i);
  end;
  a[i]:=key;
end;

procedure main;
var i,x,y:longint;
begin
  init;
  if n=1 then score:=heap[1]
  else
    for i:=1 to n-1 do
    begin
      x:=heap_min(heap);
      y:=heap_min(heap);
      score:=score+x+y;
      insert_heap(heap,x+y);
    end;
  writeln(score);
end;
begin
  score:=0;
  main;
end.
