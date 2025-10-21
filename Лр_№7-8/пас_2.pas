program zd2;
var a: string; 
begin
  writeln('Введите текст: ');
  readln(a);
  if pos('abc',a)>0 then 
    begin
    insert('www', a, 1);
    delete(a,4,3)
    end
  else insert('zzz', a, Length(a)+1);
  writeln(a);
end.