var
  arr: array[1..20] of integer;
  i, j: integer;
  
begin
  // Заполняем массив случайными числами
  Randomize;
  for i := 1 to 20 do
    arr[i] := Random(200) - 100;
  
  // Выводим исходный массив
  writeln('Исходный массив:');
  for i := 1 to 20 do
    write(arr[i], ' ');
  writeln;
  
  // Вставляем 0 перед каждым положительным элементом
  for i := 20 downto 1 do
    if arr[i] > 0 then
    begin
      for j := 20 downto i+1 do
        arr[j] := arr[j-1];
      arr[i] := 0;
    end;
  
  // Выводим новый массив
  writeln('Массив с вставленными нулями:');
  for i := 1 to 20 do
    write(arr[i], ' ');
  writeln;
end.
