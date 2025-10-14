program z;
var d, i, a: integer; t, bt, b: real; c, bc: string;
begin
  write('Введите количество спортсменов: ');
  readln(a);
  write('Введите норматив времени (в минутах): ');
  readln(b);
  d := 0;
  bt := 0;
  for i := 1 to a do
  begin
    write('Фамилия спортсмена ', i, ': ');
    readln(c);
    write('Время спортсмена ', i, ' (в минутах): ');
    readln(t);
    if t <= b then
      d := d + 1;
    if ( bt = 0) or (t < bt) then
    begin
      bt := t;
      bc := c;
    end;
  end;
  writeln;
  writeln('Количество выполнивших норматив: ',d);
  if bt <> 0 then
  begin
    writeln('Лучший результат: ', bt:0:2, ' минут');
    writeln('Фамилия спортсмена с лучшим результатом: ', bc);
  end
  else
    writeln('Нет даннхы о спортсменах');
end.