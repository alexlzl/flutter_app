void main() {
  var printUserFun = printName;
  printUserFun("leavesC"); //name: leavesC

  var list = ["leavesC", "叶"];
  list.forEach(printName); //name: leavesC   name: 叶

  var sayHelloFun = (String name) => print("$name , hello");
  sayHelloFun("leavesC"); //leavesC , hello
}

void printName(String name) {
  print("name: $name");
}

void printUser(String name, {int age}) {
  print("name: $name, age: $age");
}

void printUser2(String name, {age: int}) {
  print("name: $name, age: $age");
}

void test(String name,{age:int}){

}
void test1(String name,{int age}){

}

class Foo {}
