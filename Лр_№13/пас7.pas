var 
  a, b: file of char;
  n, i: integer;
  r, c: char;
  e: integer;
begin
  assign(a, 'D:\Лр_13\text6.txt');
  rewrite(a);
  write('Введите количество символов: ');  readln(e);
  for var k := 1 to e do
  begin
    write('Введите ', k, ' символ: '); readln(r);
    write(a, r);
  end;
  close(a);
  
  assign(a, 'D:\Лр_13\text6.txt');
  reset(a);
  assign(b, 'D:\Лр_13\tex.txt');
  rewrite(b);
  n := fileSize(a);
  for i := 1 to n do 
  begin
    seek(a, i - 1);
    read(a, c);
    if i mod 2 = 0 then
      write(b, '!')
    else
      write(b, c);
  end;
  close(a);
  close(b);
  erase(a);
  rename(b, 'D:\Лр_13\text6.txt');
  
  write('Символы на четных позициях заменены на "!": ');
  assign(b, 'D:\Лр_13\text6.txt');
  reset(b);
  while not Eof(b) do
  begin
    Read(b, c);
    write(c);
  end;
  close(b);
end.