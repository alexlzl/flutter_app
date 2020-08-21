class Person {
  String name;

  int age;
  int num;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

//  Person.getDefault() {
//    this.name = "leavesC";
//    this.age = 25;
//  }
  //也可以在构造函数主体运行之前初始化实例变量
  Person.getDefault()
      : name = "leavesC",
        age = 25 {}
}

void main() {
  var defaultPerson = Person.getDefault();
  print('${defaultPerson.name} ${defaultPerson.age}'); //leavesC 25
  print('${defaultPerson.runtimeType}'); //Person
}
