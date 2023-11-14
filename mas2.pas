program mas2;
var
  a: array[1..20] of int64;
  i, count, sum, mult: int64;
begin
  count := 0;
  sum := 0;
  mult := 1;
  for i := 1 to 20 do
    begin
      a[i] := random(116) - 22;
      if (i mod 2 = 1) and (a[i] mod 2 = 0) then
        count:= count + 1;
      if (a[i] >= -22) and (a[i] <= 93) then
        sum:= sum + a[i];
      if a[i] mod 2 = 1 then
        mult:= mult * a[i];
        
    end;
  writeln('Исходный массив:');
  for i := 1 to 20 do
    write(a[i], ' ');
  writeln();
  writeln('Количество четных элементов на нечетных местах:', count);
  writeln('Произведение нечетных элементов:', mult);
  writeln('Сумма элементов, принадлежащих заданному промежутку:', sum);
end.
