//Создать переменную типа double с именем b и со значением 4,20;
//Создать переменную типа int с именем а и со значением 3;
//Получить в консоли print равному 7,2
void main(List<String> args) {
  double b = 4.20;
  int a = 3;
  print(a + b);

//Создать переменную типа String с именем text, установить значение “Name”
//Далее изменить значение переменной text на “Flutter”
//Вывести в консоль print “I want to learn Flutter”
  String text = 'name';
  text = 'flutter';
  print('I want to learn $text');

//Создайте переменную типа double с именем myNumber, присвойте значение 2,225.
//Создайте переменную типа String c именем myText без начального значения.
//Присвойте переменной ‘myText’ значение переменной myNumber, с приведением myNumber к типу String.
//Выведите в консоль значение переменной myText, должны получить 2,225.

  double myNumber = 2.225;
  String myText = '';
  myText = myNumber.toString();
  print(myText);
}
