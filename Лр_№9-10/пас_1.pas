program z1;
var
  a: array[1..20] of Integer;
  i,c: Integer; 

function p1: integer;
var i, b: Integer;
begin
  b := 1;
  for i := 1 to 20 do
    b := b * a[i];
  p1 := b;
end;

function p2: integer;
var i, b: Integer;
begin
  b := 1;
  write('чётные элементы: ');
  for i := 1 to 20 do
    begin
    if a[i] mod 2 = 0 then
      begin
      write(a[i],' ');
      b := b * a[i];
      end;
    end;
  p2 := b;
  writeln;
end;
 
begin
  Randomize;
  write('Массив: ');
  for i := 1 to 20 do
    begin
    a[i] := Random(118) - 52;
    write(a[i], ' ');
    end;
  writeln;
  c := p1;
  Writeln('Произведение элементов: ', c);
  c := p2;
  Writeln('Произведение четных элементов: ', c);
end.