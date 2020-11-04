{$N+}
const
  ipf = 'compete.in';
  opf = 'compete.out';
var
  a       : array[0..2500]of extended;
  c       : array[1..50]of byte;
  i,j,k,n : word;
  s       : longint;

begin
  assign(input,ipf); reset(input);
  assign(output,opf); rewrite(output);
  repeat
    readln(n);
    if n = 0 then break;
    s := 0;
    for i := 1 to n do begin
      read(c[i]); s := s+c[i];
    end;
    readln;
    if odd(s) then writeln(0)
    else begin
      fillchar(a,sizeof(a),0);
      a[0] := 1;
      for i := 1 to n do
        for j := s div 2-c[i] downto 0 do a[j+c[i]] := a[j+c[i]]+a[j];
      writeln(a[s div 2]/2:0:0);
    end;
  until false;
  close(input); close(output);
end.