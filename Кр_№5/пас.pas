uses System.Diagnostics;

function Voz(a, b: integer): boolean;
begin
  Result := a < b;
end;

function Ubyv(a, b: integer): boolean;
begin
  Result := a > b;
end;

procedure SVibor(var ar: array of integer; rule: function(a, b: integer): boolean);
var n, minInd, temp: integer;
var timer: Stopwatch;
begin
  timer := new Stopwatch();
  timer.Start();
  n := length(ar);
  for var i: integer := 0 to n - 2 do
  begin
    minInd := i;
    for var j: integer := i + 1 to n - 1 do
      if rule(ar[j], ar[minInd]) then
        minInd := j;
    if minInd <> i then
    begin
      temp := ar[i];
      ar[i] := ar[minInd];
      ar[minInd] := temp;
    end;
  end;
  timer.Stop();
  writeLn('Время выполнения: ', timer.ElapsedMilliseconds, ' миллисекунд');
end;

procedure SRazrad(var ar: array of integer; rule: function(a, b: integer): boolean);
var maxNum, step: integer;
var timer: Stopwatch;
  
  function Max: integer;
  begin
    Result := ar[0];
    for var i: integer := 1 to length(ar) - 1 do
      if ar[i] > Result then Result := ar[i];
  end;
  
  procedure Razryad(r: integer);
  var
    output: array of integer;
    count: array[0..9] of integer;
    cifra: integer;
    vozr: boolean;
  begin
    SetLength(output, Length(ar));
    for var i: integer := 0 to 9 do count[i] := 0;

    for var i: integer := 0 to length(ar) - 1 do
    begin
      cifra := (ar[i] div r) mod 10;
      count[cifra] += 1;
    end;

    vozr := rule(1, 2);
    if vozr then
      for var i: integer := 1 to 9 do
        count[i] := count[i] + count[i - 1]
    else
      for var i: integer := 8 downto 0 do
        count[i] := count[i] + count[i + 1];

    if vozr then
      for var i: integer := length(ar) - 1 downto 0 do
      begin
        cifra := (ar[i] div r) mod 10;
        output[count[cifra] - 1] := ar[i];
        count[cifra] -= 1;
      end
    else
      for var i: integer := 0 to length(ar) - 1 do
      begin
        cifra := (ar[i] div r) mod 10;
        output[count[cifra] - 1] := ar[i];
        count[cifra] -= 1;
      end;

    for var i: integer := 0 to length(ar) - 1 do
      ar[i] := output[i];
  end;

begin
  timer := new Stopwatch();
  timer.Start();
  if length(ar) = 0 then exit;
  
  maxNum := Max;
  step := 1;
  while maxNum div step > 0 do
  begin
    Razryad(step);
    step := step * 10;
  end;
  timer.Stop();
  writeLn('Время выполнения: ', timer.ElapsedMilliseconds, ' миллисекунд');
end;

begin
  var ar: array of integer;
  var f: text;
  var n, menu: integer;
  var timer: Stopwatch;
  writeLn('1 - Сортировка выбором (возрастание)');
  writeLn('2 - Сортировка выбором (убывание)');
  writeLn('3 - Поразрядная сортировка (возрастание)');
  writeLn('4 - Поразрядная сортировка (убывание)');
  write('Ваш выбор: ');
  readLn(menu);

  assign(f, 'D:\ОАиП\Дкр_№5\input.txt');
  rewrite(f);
  writeLn(f, '1000');
  for var i: integer := 1 to 1000 do
    Write(f, random(10000), ' ');
  close(f);
  writeln();
  writeLn('Создан файл input.txt с 1000 чисел');

  assign(f, 'D:\ОАиП\Дкр_№5\input.txt');
  reset(f);
  read(f, n);
  SetLength(ar, n);
  for var i: integer := 0 to n - 1 do
    read(f, ar[i]);
  close(f);
  
  case menu of
    1:begin
        writeln('Сортировка выбором (возрастание): ');
        SVibor(ar, Voz);
      end;
    2:begin
        writeln('Сортировка выбором (убывание): ');
        SVibor(ar, Ubyv);
      end;
    3:begin
        writeln('Поразрядная сортировка (возрастание): ');
        SRazrad(ar, Voz);
      end;
    4:begin
        writeln('Поразрядная сортировка (убывание): ');
        SRazrad(ar, Ubyv);
      end;
  else
    begin
      writeLn('Неверный выбор');
      Exit;
    end;
  end;

  assign(f, 'D:\ОАиП\Дкр_№5\output.txt');
  rewrite(f);
  writeln(f, n, ' ');
  for var i: integer := 0 to n - 1 do
    write(f, ar[i], ' ');
  close(f);
  write('Первые 10 чисел: ');
  for var i: integer := 0 to 9 do
    write(ar[i], ' ');
  writeLn;
end.