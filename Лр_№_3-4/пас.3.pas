program z;
var b,c,d,e:integer; a:string;
begin
  writeln('Введите дату посещения');
  readln(a);
  writeln('Введите количество посещения отоларинголога');
  readln(b);
  writeln('Введите количество посещения окулиста');
  readln(c);
  writeln('Введите количество посещения хирурга');
  readln(d);
  e:=b+c+d;
  writeln('Дата: ',a);
  writeln('Посещение отоларинголога: ',b);
  writeln('Посещение окулиста: ',c);
  writeln('Посещение хирурга: ',d);
  writeln('Общее посещение врачей: ',e);
end.