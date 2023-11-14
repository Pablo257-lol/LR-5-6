var i,f,b,k,h,min,n:integer;
a:array[-1000..1000] of integer;
begin
  write('Начало диапозона: ');
  read(f);
  write('Конец диапозона: ');
  readln(b);
  min:=b;
  h:=f;
  randomize;
  for i:=1 to 20 do
    a[i]:=random(f,b);
  for i:=1 to 20 do
    begin
    write(a[i]:4);
    if i mod 10 = 0 then writeln;
    end;
    
    n:=20;
    for i:=1 to 20 do // Нахождение первого положительного элемента в массиве
    if a[i]>0 then
      begin
      k:=i;
      if i<n then 
        n:=k;
    end;
    
          for i:=1 to 20 do //Нахождение минимального числа в массиве
        if a[i]<min then
          min:=a[i];
        
    k:=20;
      for i:=1 to 20 do // Нахождение индекса минимального числа в массиве
    if a[i]=min then
      begin
      h:=i;
      if i<k then 
        k:=h;
    end;
    
    begin
      for i := n to 19 do // Удаление минимального и первого положительного элемента из массива
        begin
        a[i] := a[i+1];
        end;
      for i:=h-1 to 19 do
        a[i]:=a[i+1];
        
      writeln('Ваш массив: '); // Выписываем готовый массив
      for i := 1 to 18 do
    begin
    write(a[i]:4);
    if i mod 10 = 0 then writeln;
    end;
  end
end.
