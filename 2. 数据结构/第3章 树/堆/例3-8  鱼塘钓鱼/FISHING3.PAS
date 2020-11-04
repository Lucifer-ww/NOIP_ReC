Program Fishing3; {堆结构、贪心}

Type
    Data = Record
        fish, lake: integer;    //堆中结点的信息
    End;
Var
    heap: Array[1..100] Of Data;
    t, f, d: Array[1..100] Of integer;
    ans, i, j, k, m, Max, n, t1, Time: Longint;

Procedure Sift(i: Longint);    //堆操作，本题只需要向下筛
Var
    a: Data;
    j: Longint;
Begin
    a := heap[i];
    j := i shl 1;
    While (j <= k) Do Begin
        If (j < k) and (heap[j].fish < heap[j + 1].fish) Then Inc(j);
        If a.fish < heap[j].fish Then Begin
            heap[i] := heap[j];
            i := j;
            j := i shl 1;
        End
        Else Break;
    End;
    heap[i] := a;
End;

Begin
    assign(input,'fishing.in');
    assign(output,'fishing.out');
    reset(input);
    rewrite(output);
    Readln(n);
    For i := 1 To n Do Read(f[i]);readln;
    For i := 1 To n Do Read(d[i]);readln;
    For i := 1 To n-1 Do Read(t[i]);t[n]:=0;readln;
    Readln(m);
    t1 := 0;
    Max := 0;
    For k := 1 To n Do Begin    //枚举最远走到的池塘的编号
        Time := m - t1;    //计算剩余时间
        ans := 0;
        For i := 1 To k Do Begin    //收集能够钓鱼的池塘的资料
            heap[i].fish := f[i];
            heap[i].lake := i;
        End;
        For i := 1 To k shr 1 Do Sift(i);    //堆的初始化
        While (Time > 0) and (heap[1].fish > 0) Do
        Begin
            Inc(ans, heap[1].fish);    //贪心选取鱼最多的池塘
            Dec(heap[1].fish, d[heap[1].lake]);    //修改鱼的数量
            Sift(1);    //堆维护
            Dec(Time);    //剩余时间变少
        End;
        If ans > Max Then Max := ans;    //刷新最优解
        Inc(t1, t[k]);    //累计走路需要的时间
    End;
    Writeln(Max);
    close(input);
    close(output)
End.

