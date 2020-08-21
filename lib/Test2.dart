void main() {
  //扩展运算符 ... 和 空值感知扩展运算符 ...?
  //提供了一种将多个元素插入集合的简洁方法
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list2); //[0, 1, 2, 3]
  //如果 list3 可能为 null，此时则需要使用空值感知扩展运算符，否则会抛出异常
  //空值感知扩展运算符只有当 list3 不为 null 时才会执行插值操作
  var list3 = null;
  var list4 = [0, ...?list3];
  print(list4); //[0]

  var list =<String> [];
  for (int index = 1; index < 10; index++) {
    list.add(index.toString());
  }
  for (var item in list) {
    print("循环遍历：$item");
  }


}
