uses GraphABC;
var
  a, b, int, p: real;
  menu: integer;

function f(x: real): real;
begin
  f := 2*x*x*x+x+1;
end;

function tr(a, b: real): real;
var h, S, x: real;
    n: integer;
begin
  n := 1000;
  h := (b - a) / n;
  x := a + h;
  S := (f(a) + f(b)) / 2;
  while x < b do
  begin
    S := S + f(x);
    x := x + h;
  end;
  tr := S * h;
end;

function pr(a, b: real): real;
var h, S, x: real;
    n: integer;
begin
  n := 1000;
  h := (b - a) / n;
  x := a + h / 2;
  S := 0;
  while x < b do
  begin
    S := S + f(x);
    x := x + h;
  end;
  pr := S * h;
end;

procedure vvod;
begin
  write(' Введите начало интервала a: '); readln(a);
  write(' Введите конец интервала b: '); readln(b);
end;

procedure vln;
begin
  int := tr(a, b);
  p := abs(int - pr(a, b));
  write(' Вычисления завершены!');
end;

procedure vivod;
begin
  writeln(' Площадь фигуры: ', int:0:6);
  write('Погрешность: ', p:0:6);
end;

procedure DrawGraph;
var сenterX, сenterY: integer;
    x, y: real;
    px, py, prev_px, prev_py: integer;
    a_str, b_str, int_str: string;
begin
  SetWindowSize(800, 600);
  SetWindowTitle('График функции f(x) = 2x³ + x + 1');
  ClearWindow;
  
  сenterX := 200;
  сenterY := 500;
  Line(50, сenterY, 750, сenterY);
  Line(сenterX, 50, сenterX, 590);
  
  Line(745, сenterY - 5, 750, сenterY);
  Line(745, сenterY + 5, 750, сenterY);
  Line(сenterX - 5, 55, сenterX, 50);
  Line(сenterX + 5, 55, сenterX, 50);

  TextOut(755, сenterY - 15, 'X');
  TextOut(сenterX + 10, 45, 'Y');
  TextOut(сenterX + 10, сenterY + 10, '0');

  for var ix := -3 to 6 do
  begin
    if ix <> 0 then
    begin
      px := сenterX + ix * 40;
      Line(px, сenterY - 5, px, сenterY + 5);
      TextOut(px - 8, сenterY + 8, IntToStr(ix));
    end;
  end;
  for var iy := -2 to 6 do
  begin
    if iy <> 0 then
    begin
      py := сenterY - iy * 40;
      Line(сenterX - 5, py, сenterX + 5, py);
      TextOut(сenterX + 10, py - 10, IntToStr(iy));
    end;
  end;

  SetPenColor(clBlue);
  SetPenWidth(2);
  x := -3.0;
  y := f(x);
  prev_px := сenterX + Round(x * 40);
  prev_py := сenterY - Round(y * 40);
  while x <= 6.0 do
  begin
    y := f(x);
    px := сenterX + Round(x * 40);
    py := сenterY - Round(y * 40);
    Line(prev_px, prev_py, px, py);
    prev_px := px;
    prev_py := py;
    x := x + 0.02;
  end;
  
  a_str := Format('{0:F2}', a);
  b_str := Format('{0:F2}', b);
  int_str := Format('{0:F4}', int);

  if a < b then
  begin
    SetPenColor(RGB(0, 180, 0));
    SetPenWidth(1);
    x := a;
    while x <= b do
    begin
      y := f(x);
      px := сenterX + Round(x * 40);
      py := сenterY - Round(y * 40);
      if (px >= 50) and (px <= 750) then
      begin
        Line(px, py, px, сenterY);
      end;
      x := x + 0.07;
    end;
    
    SetPenColor(clRed);
    SetPenWidth(3);
    px := сenterX + Round(a * 40);
    if (px >= 50) and (px <= 750) then
    begin
      Line(px, сenterY, px, сenterY - Round(f(a) * 40));
      SetFontColor(clRed);
      TextOut(px - 15, сenterY + 25, 'a=' + a_str);
    end;
    px := сenterX + Round(b * 40);
    if (px >= 50) and (px <= 750) then
    begin
      Line(px, сenterY, px, сenterY - Round(f(b) * 40));
      SetFontColor(clRed);
      TextOut(px - 15, сenterY + 25, 'b=' + b_str);
    end;
  end
  else
  begin
    SetFontColor(clRed);
    TextOut(300, 300, 'Ошибка: a должно быть меньше b');
  end;

  SetFontColor(clBlack);
  SetFontSize(12);
  TextOut(10, 10, 'f(x) = 2x³ + x + 1');
  TextOut(10, 30, 'Интеграл: ∫[a,b] f(x)dx');
  TextOut(10, 50, 'Интервал: [' + a_str + ', ' + b_str + ']');
  TextOut(10, 70, 'Площадь: ' + int_str);
end;

begin
    writeln('1 - Ввести пределы интегрирования');
    writeln('2 - Вычислить интеграл');
    writeln('3 - Показать результат и погрешность');
    writeln('4 - Построить график');
    writeln('5 - Выход');
  repeat
    writeln;
    write('Ваш выбор: '); 
    readln(menu);
    
    case menu of
      1: vvod;
      2: vln;
      3: vivod;
      4: DrawGraph; 
      5: writeln('До свидания!');
    else
      writeln('Ошибка! Выберите 1-5');
    end;
    writeln;
  until menu = 5;
end.