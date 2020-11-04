var s:char;
    t:integer;
begin{main}
  assign(input,'stack.in');
  reset(input);
  read(s);
  repeat
  case s of
   '(':inc(t);
   ')':dec(t);
        end;
    read(s);
  until s='@';
  close(input);
  assign(output,'stack.out');
  rewrite(output);
  if t=0 then writeln('YES')
         else writeln('NO');
  close(output);
end.