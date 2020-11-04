const
     maxn=30000;
var
   heap:array[1..maxn] of longint;
   ans,n,len,a,b,i,tmp:longint;

procedure put(x:longint);
var fa,son,tmp:longint;
begin
     len:=len+1;
     heap[len]:=x;
     son:=len;
     while (son<>1)and(heap[son div 2]>heap[son]) do
     begin
          tmp:=heap[son div 2];
          heap[son div 2]:=heap[son];
          heap[son]:=tmp;
          son:=son div 2;
     end;
end;

function get:longint;
var fa,son,tmp:longint;
    stop:boolean;
begin
     get:=heap[1];
     heap[1]:=heap[len];
     len:=len-1;
     fa:=1; stop:=false;
     while ((fa*2<=len)or(fa*2+1<=len))and(not stop) do
     begin
          if (fa*2+1>len)or(heap[fa*2]<heap[fa*2+1])
             then son:=fa*2
             else son:=fa*2+1;
          if heap[fa]>heap[son]
             then begin
                       tmp:=heap[fa];
                       heap[fa]:=heap[son];
                       heap[son]:=tmp;
                       fa:=son;
                  end
             else stop:=true;
     end;
end;

begin
     assign(input,'fruit.in');
     reset(input);
     assign(output,'fruit.out');
     rewrite(output);
 
     len:=0;

     read(n);
     for i:=1 to n do
     begin
          read(tmp);
          put(tmp);
     end;

     ans:=0;
     for i:=1 to n-1 do
     begin
          a:=get;
          b:=get;
          ans:=ans+a+b;
          put(a+b);
     end;

     writeln(ans);

     close(input);close(output);
end.
