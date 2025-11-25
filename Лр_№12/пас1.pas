begin
  var filetext: text;
Assign(filetext,'text.txt');
Rewrite(filetext);
for var i:=1 to 10 do
    writeln(filetext, i);
close(filetext);
Assign(filetext,'text.txt');
reset(filetext);
for var i:=1 to 10 do 
  begin
    var a: string;
    readln(filetext, a);
    writeln(a);
end;
close(filetext);
end.