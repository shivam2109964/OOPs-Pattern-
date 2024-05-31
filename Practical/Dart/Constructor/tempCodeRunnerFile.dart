class Person {
  String name;
  int age;

  //Generative Constructor
  Person(this.name, this.age);

  //Named Constructor
  Person.withName(this.name, this.age);

  //Another named Constructor
  Person.withAge(this.age, this.name);

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  final person = Person("Shivam", 22);
  person.display();

  print("");
  final personNamed = Person.withName("Krishna", 15);
  personNamed.display();

  print("");
  final personAge = Person.withAge(32, "Golu");
  personAge.display();
}
