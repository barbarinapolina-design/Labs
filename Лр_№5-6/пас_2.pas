program zd2;
var
  a: array[1..20] of integer;
  i, b, max: integer;
begin
  Randomize;
  write('Массив: ');
  for i := 1 to 20 do
    begin
    a[i] := Random(50);
    write(a[i], ' ');
    end;
  writeln;

  b := 1;
  max := 1;
  for i := 2 to 20 do
  begin
    if a[i] <= a[i-1] then
      b := b + 1
    else
      b := 1;
    if b > max then
      max := b;
  end;
  writeln('Самая длинная невозрастающая последовательность = ', max);
end.