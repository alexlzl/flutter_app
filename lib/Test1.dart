void main() {
  print(10.9 ~/ 3);
  print(10.9 / 3);
  print(10.9 % 3);
  var a = 100.1;
  print(a);
  num age = 100;
  int age1 = age as int;
  print(age1);
  String name = 'alex';
  name ??= "new alex";
  print(name);
  var name1;
  name1 ??= "new alex1";
  print(name1);
  var list = [1, 2, 3, 4, 5];
  //级联运算符 .. 用于连续操作某个对象，而无需每次操作时都调用该对象
  list
    ..insert(0, 6)
    ..removeAt(4)
    ..add(7);
  print(list);
}

class Test1 {}
