class Person {
  String? name;
  int? age;

  //Generative Constructor
  Person(this.name, this.age);

  //Named Constructor
  Person.withName(
    this.name,
  ) : age = 10;

  //Another named Constructor
  Person.withAge(this.age, this.name);

  Person.withFullDetail() {
    name = "Surya";
    age = 20;
  }

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  final person = Person("Shivam", 22);
  person.display();

  print("");
  final personNamed = Person.withName("Krishna");
  personNamed.display();

  print("");
  final personAge = Person.withAge(32, "Golu");
  personAge.display();

  print("");
  final personFullDetails = Person.withFullDetail();
  personFullDetails.display();
}
