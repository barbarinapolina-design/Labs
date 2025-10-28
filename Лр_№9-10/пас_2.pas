program z2;
var
  a: array[1..6, 1..8] of Integer;
  a2: array[1..6] of Integer;
  i, j: Integer;
begin
  Randomize;
  Writeln('Исходная матрица 6x8:');
  for i := 1 to 6 do
  begin
    for j := 1 to 8 do
    begin
      a[i, j] := Random(20) - 10;
      Write(a[i, j]:4);
    end;
    Writeln;
  end;
  
  for i := 1 to 6 do
  begin
    a2[i] := 0;
    for j := 1 to 8 do
    begin
      if Abs(a[i, j]) > 4 then
      begin
        a2[i] := a[i, j];
        break;
      end;
    end;
  end;
  Writeln('Результирующий массив:');
  for i := 1 to 6 do
    Write(a2[i]:4);
end.