var N, P, x, s: integer;
begin
  P := 1;
  write('Введите число: ');
  readln(N);
  while N > 0 do
  begin
    s := 0;
    x := 1;
    while x <= N div 2 do
    begin
      if N mod x = 0 then s := s + x;
      x := x + 1;
    end;
    if s = N then
    begin
      writeln(N, ' - совершенное число');
      P := P * N;
    end;
    write('Введите следующее число (0 для завершения): ');
    readln(N);
  end;
  if P = 1 then writeln('Совершенных чисел не найдено')
  else writeln('Произведение совершенных чисел: ', P);
end.