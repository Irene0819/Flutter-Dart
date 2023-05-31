import 'dart:io';

void main() {
  task20();
}

//Пользователь вводит порядковый номер пальца руки. Необходимо показать его название на экран.
void task1() {
  print('Введите номер пальца руки:');
  int fingers = int.parse(stdin.readLineSync()!);
  if (fingers == 1) {
    print('Большой');
  } else if (fingers == 2) {
    print('Указательный');
  } else if (fingers == 3) {
    print('Средний');
  } else if (fingers == 4) {
    print('Безымянный');
  } else if (fingers == 5) {
    print('Мизинец');
  } else {
    print('Введено неверное значение');
  }
}

//Переменная num может принимать одно из значений: 1, 2, 3 или 4. Если она имеет значение '1', то в переменную result запишем 'зима', если имеет значение '2' – 'лето' и так далее.
void task2() {
  print('Enter data:');
  int num = int.parse(stdin.readLineSync()!);
  if (num == 1) {
    print('Winter');
  } else if (num == 2) {
    print('Spring');
  } else if (num == 3) {
    print('Summer');
  } else if (num == 4) {
    print('Autumn');
  } else {
    print('Wrong data');
  }
}

//Если переменная a меньше нуля, то выведите 'Верно', иначе выведите 'Неверно'. Проверьте работу скрипта при a, равном 1, 0, -3.
void task3() {
  print('Enter data:');
  int a = int.parse(stdin.readLineSync()!);
  if (a < 0) {
    print('True');
  } else if (a > 0) {
    print('False');
  } else if (a == 0) {
    print('Values are equal');
  }
}

//Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр равняется сумме вторых трех цифр. Если это так - выведите 'да', в противном случае выведите 'нет'
void task4() {
  List<int> val = [9, 5, 6, 5, 8, 7];
  if (((val[0]) + (val[1]) + (val[2])) == ((val[3]) + (val[4]) + (val[5]))) {
    print('Yes');
  } else if (((val[0]) + (val[1]) + (val[2])) !=
      ((val[3]) + (val[4]) + (val[5]))) {
    print('No');
  }
}

//Нужно написать условие для действий пешехода при различных сигналах светофора
void task5() {
  print('Какой сейчас сигнал светофора?\n1 - Красный\n2 - Жёлтый\n3 - Зялёный');
  int sygnal = int.parse(stdin.readLineSync()!);
  if (sygnal == 1) {
    print('Ну-ка стоять!');
  } else if (sygnal == 2) {
    print('На старт...Внимание...');
  } else if (sygnal == 3) {
    print('Шагом, марш!');
  }
}

//Написать программу, которая проверяет, является ли введенное пользователем число четным
void task6() {
  print('Enter your number:');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print('Even number');
  } else if (number % 2 != 0) {
    print('Odd number');
  }
}

//Написать программу, которая проверяет, делится ли на три (без остатка) веденное пользователем целое число
void task7() {
  print('Enter your number:');
  int number1 = int.parse(stdin.readLineSync()!);
  if (number1 % 3 == 0) {
    print('A number is divisible by 3 without a remainder');
  } else if (number1 % 3 != 0) {
    print('A number is not divisible by 3 without a remainder');
  }
}

//Написать программу, которая вычисляет оптимальный вес пользователя, сравнивает его с реальным и выдает рекомендацию о необходимости поправиться или похудеть. Пользователь вводит рост (см) и вес (кг). Оптимальный вес вычисляется по формуле: рост (см) - 100.
//Ввод: рост(см), вес (кг);
//Ввод: рекомендация, сколько кг рекомендуют.
void task8() {
  print('Введите ваш рост:');
  int sm = int.parse(stdin.readLineSync()!);
  if (sm > 220) {
    print('Ваш рост вне диапазона');
  } else if (sm <= 0) {
    print('Ваш рост вне диапазона');
  } else if (sm > 0) {
    print('Ведите ваш вес:');
    double kg = double.parse(stdin.readLineSync()!);
    if (kg <= 0) {
      print('Неверное число, введите корректные данные вашего веса');
    } else if (kg > 0) {
      double height = sm / 100;
      double imt = (kg / (height * height));
      print('Ваш индекс массы тела: $imt');
      if (imt < 18.5) {
        print('У вас недостаток веса');
      } else if (imt >= 18.5 && imt <= 24.9) {
        print('Ваш вес в норме');
      } else if (imt >= 25 && imt <= 29.9) {
        print('Есть немного избыточного веса');
      } else if (imt >= 30 && imt <= 34.9) {
        print('У вас избыточный вес');
      } else {
        print('У вас ожирение');
      }
    }
  }
}

//Написать программу, которая проверяет, является ли “человек высокого роста” (если он больше 170см), в обратном случае он - “человек среднего роста”
void task9() {
  print('Введите ваш рост:');
  int rost = int.parse(stdin.readLineSync()!);
  if (rost >= 170) {
    print('Ваш рост: $rost - Высокий');
  } else if (rost < 170 && rost > 150) {
    print('Ваш рост: $rost - Средний');
  } else if (rost <= 150) {
    print('Ваш рост: $rost - Низкий');
  } else {}
}

//Написать программу, которая сравнивает два веденных пользователем числа. Программа должна указать, какое число больше, или, если числа равны, вывести соответствующее сообщение.
void task10() {
  print('Введите первое число:');
  double number1 = double.parse(stdin.readLineSync()!);
  print('Введите второе число');
  double number2 = double.parse(stdin.readLineSync()!);
  if (number1 > number2) {
    print('$number1 больше $number2');
  } else if (number1 < number2) {
    print('$number1 меньше $number2');
  } else {
    print('Числа равны');
  }
}

//Написать программу, которая запрашивает у пользователя номер дня недели и выводит одно из сообщений: «выходной день», «рабочий день».
void task11() {
  print('Введите номер дня недели:');
  int day = int.parse(stdin.readLineSync()!);
  if (day >= 1 && day <= 5) {
    print('Рабочий день');
  } else if (day >= 6 && day <= 7) {
    print('Выходной день');
  } else {
    print('Неверный номер дня недели');
  }
}

//Написать программу, которая определяет категорию человека по его возрасту. (юный, молодой, пожилой).
void task12() {
  print('Введите ваш возраст:');
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 1 && age <= 3) {
    print('Ваш возраст: $age - Раннее детство');
  } else if (age >= 4 && age <= 5) {
    print('Ваш возраст: $age - Дошкольный');
  } else if (age >= 6 && age <= 12) {
    print('Ваш возраст: $age - Младший школьный');
  } else if (age >= 13 && age <= 17) {
    print('Ваш возраст: $age - Подростковый');
  } else if (age >= 18 && age <= 20) {
    print('Ваш возраст: $age - Юношеский');
  } else if (age >= 21 && age <= 54) {
    print('Ваш возраст: $age - Зрелый');
  } else if (age >= 55 && age <= 74) {
    print('Ваш возраст: $age - Пожилой');
  } else if (age >= 75 && age <= 90) {
    print('Ваш возраст: $age - Старческий');
  } else if (age >= 90) {
    print('Ваш возраст: $age - Долгожитель');
  }
}

//Написать программу, которая проверяет, является ли введенный пользователем год, високосным.
void task13() {
  print('Введите год:');
  int year = int.parse(stdin.readLineSync()!);
  if (year % 4 == 0) {
    print('$year - Високосный год');
  } else if (year % 4 != 0) {
    print('$year - Обычный год');
  }
}

//Написать программу проверки знания даты начала второй мировой войны. В случае неправильного ответа пользователя, программа должна выводить правильный ответ.
void task14() {
  print('Когда началась вторая мировая война?');
  int war = int.parse(stdin.readLineSync()!);
  if (war == 1945) {
    print('Верно, Вторая мировая война началась в 1945 году. Вы молодец!');
  } else {
    print(
        'Ответ не верный, Вторая мировая война началась в 1945 году. Учите историю!');
  }
}

//Написать программу вычисления стоимости разговора по телефону с учетом 20% скидки, предоставляемой по субботам и воскресениям.
//Ввод: длительность разговора (мин), день недели;
//Вывод: предоставляемая скидка, стоимость разговора.
void task15() {
  print('Какой сегодня день недели?');
  int dayofweek = int.parse(stdin.readLineSync()!);
  print('Сколько минут вы разговаривали?');
  double time = double.parse(stdin.readLineSync()!);
  double callprice = 0.9;
  double discount = 0.18;
  if (dayofweek >= 6 && dayofweek <= 7) {
    double price = (time * (callprice - discount));
    print(
        ' Ваша скидка в выходной день составляет  - $discount com\n Стоимость разговора с учётом скидки за $time минут(ы) - $price сом');
  } else if (dayofweek >= 1 && dayofweek <= 5) {
    double price2 = (time * callprice);
    print(
        'Стоимость разговора без учёта скидки выходного дня за $time минут(ы) - $price2 сом');
  } else {
    print('Неверный номер дня недели');
  }
}

//Написать программу, которая возводит в квадрат число, введенное пользователем, если оно четное, и в третью степень, если число нечетное.
void task16() {
  print('Введите ваше число:');
  double num = double.parse(stdin.readLineSync()!);
  if (num / 2 != 0) {
    double square = (num * num);
    print('Число $num - чётное, квадрат $num = $square');
  } else if (num / 3 != 0) {
    double cube = (num * num * num);
    print('Число $num - нечётное, куб $num = $cube');
  }
}

//Написать программу, которая вычисляет стоимость покупки с учетом скидки. Скидка в 10% предоставляется, если сумма покупки больше 1000 сомов.
void task17() {
  print('Введите стоимость покупки:');
  double product = double.parse(stdin.readLineSync()!);
  if (product < 1000) {
    print('Общая сумма покупки: $product \nСумма с учётом скидки $product');
  } else if (product >= 1000) {
    double itog = ((product * 10) / 100);
    print('Общая сумма покупки: $product \nСумма с учётом скидки: $itog');
  }
}

//Написать программу вычисления стоимости покупки с учетом скидки. Скидка в 7% предоставляется, если сумма покупки больше 500 сомов, в 50 % - если сумма больше 21000 сомов.
void task18() {
  print('Введите стоимость покупки:');
  double value = double.parse(stdin.readLineSync()!);
  if (value >= 500 && value < 21000) {
    double cash = ((value * 7) / 100);
    double itog = (value - cash);
    print('Стоимость покупки составляет: $value \nС учётом скидки: $itog');
  } else if (value > 21000) {
    double cash2 = ((value * 50) / 100);
    print('Стоимость покупки составляет: $value \nС учётом скидки: $cash2');
  } else if (value < 500) {
    print('Стоимость покупки без учёта скидок составляет: $value');
  } else {}
}

//Написать программу, которая запрашивает у пользователя номер месяца и затем выводит соответствующее название времени года.
void task19() {
  print('Введите номер месяца:');
  int month = int.parse(stdin.readLineSync()!);
  if (month >= 1 && month <= 2 && month == 12) {
    print('Сейчас зима');
  } else if (month >= 3 && month <= 5) {
    print('Сейчас весна');
  } else if (month >= 6 && month <= 8) {
    print('Сейчас лето');
  } else if (month >= 9 && month <= 11) {
    print('Сейчас осень');
  }
}

//Hаписать программу, которая запрашивает у пользователя номер дня недели, затем выводит название дня недели или сообщение об ошибке, если введены неверные данные.
void task20() {
  print('Нажмите на номер дня недели:');
  int week = int.parse(stdin.readLineSync()!);
  switch (week) {
    case 1:
      print('Понедельник');
      break;
    case 2:
      print('Вторик');
      break;
    case 3:
      print('Среда');
      break;
    case 4:
      print('Четверг');
      break;
    case 5:
      print('Пятница');
      break;
    case 6:
      print('Суббота');
      break;
    case 7:
      print('Воскресенье');
      break;
    default:
      print('Неверный номер дня недели');
  }
}
