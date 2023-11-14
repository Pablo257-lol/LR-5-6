var i,k,n,f,b,c,h:integer;
a:array[-1000..1000] of integer;
begin
  writeln('Начало диапозона: ');
  read(f);
  writeln('Конец диапозона: ');
  readln(b);
  writeln('Количество чисел: ');
  readln(c);
  k:=0;
  n:=0;
  h:=f;
  randomize;
  for i:=1 to c do
    a[i]:=random(f,b);
  for i:=1 to c do
    begin
    write(a[i]:4);
    if i mod 10 = 0 then writeln;
    end;
  for i:=1 to c do
    if a[i]>=h then
    begin
     h:=a[i];
     k:=k+1;
    end
    else
    begin
      h:=f;
      if k>=n then
        begin
        n:=k;
        k:=1;
        end
      else
        k:=1;  
      end;
  writeln(n);
end.