class MyClass {
  var myProperty = 1;
}

void main() {
  final myObject = MyClass();
  print(myObject.myProperty);
  final anotherObject = myObject;
  anotherObject.myProperty = 2;
  print(anotherObject.myProperty);
}
