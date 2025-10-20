program zd1;
var
  a: array[1..20] of integer;
  i, max, maxi, min, mini, last5: integer;
begin
  Randomize;
  write('Массив: ');
  for i := 1 to 20 do
    begin
    a[i] := Random(118) - 52;
    write(a[i], ' ');
    end;
  writeln;
  
  max := a[1];
  maxi := 1;
  for i := 2 to 20 do
    if a[i] > max then
    begin
      max := a[i];
      maxi := i;
    end;
  writeln('Самый большой: ', max, ' на позиции ', maxi);
  
  min:=1000;
  for i := 1 to 20 do
    if (a[i] > 0) and (a[i] < min) then
    begin
      min:= a[i];
      mini:= i;
    end;
  if min <> 1000 then
    writeln('Самый маленький положительный: ', min, ' на позиции ', mini)
  else
    writeln('Положительных нет');
  
  last5 := 0;
  for i := 1 to 20 do
    if a[i] mod 5 = 0 then
      last5 := i;
  if last5 > 0 then
    writeln('Последний кратный 5 на позиции: ', last5)
  else
    writeln('Кратных 5 нет');
end.