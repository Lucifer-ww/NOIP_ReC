program dolari;
const
  max_dana=100;
var
  i : integer;
  broj_dana : integer;
  tecaj : array[1..max_dana] of integer;
  dolara : real;
  f : text;

begin
  assign(f,'DOLLARS.IN');
  reset(f);
  read(f,broj_dana);
  for i := 1 to broj_dana do
    read(f,tecaj[i]);
  close(f);
  dolara := 100;
  for i := 1 to broj_dana - 1 do
    if tecaj[i] > tecaj[i + 1] then
      dolara := dolara * tecaj[i] / tecaj[i + 1];
  assign(f,'DOLLARS.OUT');
  rewrite(f);
  writeln(f,dolara : 0 : 2);
  close(f);
end.
