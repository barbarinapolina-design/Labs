program zd3;
var
  a: array[1..20] of integer;
  i, min, mini, p, pi: integer;
begin
  Randomize;
  write('Исходный массив: ');
  for i := 1 to 20 do
    begin
    a[i] := Random(100) - 30;
    write(a[i], ' ');
    end;
  writeln;
  writeln;

  pi := 0;
  for i := 1 to 20 do
    if a[i] > 0 then
    begin
      p:=a[i];
      pi:=i;
      break;
    end;
  writeln('Первый положительный элемент - ', p);
  if pi > 0 then
  begin
    for i := pi to 19 do
      a[i] := a[i+1];
    write('Удалили первый положительный элемент: ');
    for i := 1 to 20 do
    write(a[i], ' ');
    writeln();
    writeln;
  end;

  min := a[1];
  mini := 1;
  for i := 2 to 20 do
    if a[i] < min then
    begin
      min := a[i];
      mini := i;
    end;
  writeln('Самый маленький элемент - ', min);
  for i := mini to 19 do
    a[i] := a[i + 1];
  write('Удалили самый маленький элемент: ');
  for i := 1 to 20 do
    write(a[i], ' ');
end.