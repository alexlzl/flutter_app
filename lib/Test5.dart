void main() {
  var c = C();
  c.funA();
  c.funB();
}

class A {
  void funA() {}
}

class B {
  void funB() {}
}

//使用 with 关键字表示类C是由类A和类B混合构成的
class C = A with B;
