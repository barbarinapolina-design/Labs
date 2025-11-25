begin
   var b,c:integer;
   var a: text; var a2: text;
   assign(a,'input.txt');
   assign(a2,'output.txt');
   rewrite(a);
   rewrite(a2);
   for var i:=1 to 100 do
     writeln(a, i);
   close(a);
   c:=0;
   assign(a,'input.txt');
   reset(a);
   while not eof(a) do
   begin
     readln(a,b);
     if b>c then c:=b;
   end;
   writeln(a2,'Максимальное число: ',c);
   close(a);
   assign(a,'input.txt');
   reset(a);
   while not eof(a) do
   begin
     readln(a,b);
     if b<c then c:=b;
   end;
   writeln(a2,'Минимальное число: ',c);
   close(a);
   close(a2);
end.