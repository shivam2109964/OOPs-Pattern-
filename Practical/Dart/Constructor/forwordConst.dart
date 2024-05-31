class Person {
  String? name;
  int? age;

  //Generative Constructor
  Person(this.name, this.age);

  Person.anonymous(String name) : this(name, 22);

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  final person = Person("Shivam", 20);
  person.display();
  print("");

  final person2 = Person.anonymous("Golu");
  person2.display();
}
