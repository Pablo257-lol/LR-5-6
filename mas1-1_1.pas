program mas1;

var 
  arr: array[1..20] of integer;  // Объявление массива arr из 20 целых чисел
  i: integer;  // Объявление переменной i типа integer

begin
  writeln('Введите массив целых чисел (20 элементов):');  // Вывод сообщения о вводе массива
  for i := 1 to 20 do  // Цикл для ввода значений в массив arr
    readln(arr[i]);

  for i := 1 to 20 do  // Цикл для обработки элементов массива arr
  begin
    if arr[i] > 0 then  // Если элемент больше нуля
      arr[i] := 0  // Заменить его на ноль
    else if arr[i] < 0 then  // Иначе, если элемент меньше нуля
      arr[i] := arr[i] * arr[i];  // Заменить его на квадрат этого числа
  end;

  writeln('Измененный массив:');  // Вывод сообщения о измененном массиве
  for i := 1 to 20 do  // Цикл для вывода измененных значений массива arr
    writeln(arr[i]);
end.
