void throwException() {
  try {
    List<String> stringList = new List();
    stringList.add("value");
    print('${stringList[1]}');
  } on RangeError {
    print("抛出了异常...");
  }
}

void main() {
  throwException();
}
