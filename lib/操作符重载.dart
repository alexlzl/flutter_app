class Person {
  int age;

  Person(int nAge) {
    this.age = nAge;
  }

  bool operator +(Person ps) {
    if (this.age == ps.age) {
      return true;
    }
    return false;
  }
}

int main() {
  Person p1 = new Person(10);
  Person p2 = new Person(10);
  if (p1 == p2) {
  } else {}

  return 0;
}
