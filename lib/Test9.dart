void main(){
  print(new Point(100, 200)?.name);
}

class Point{
  num x,y;
  String name='alex';
  //this指当前实例，Dart中，只有名称冲突时才使用它，否则，Dart的代码风格是要省略this的。
  Point(num x,num y){
    this.x = x ;
    this.y = y ;
  }
//  Point(num x,num y,String name){
//    this.x = x ;
//    this.y = y ;
//    this.name=name;
//  }
}

