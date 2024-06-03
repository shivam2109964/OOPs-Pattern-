class SomeClass {
  String name;
  SomeClass(this.name);

  void displayName() {
    print("My Name is $name");
  }
}

extension Surname on SomeClass {
  void displaySurname(String surname) {
    print("My Surname is $surname");
  }
}

void main() {
  SomeClass classes = SomeClass("Shivam");
  classes.displayName();
  classes.displaySurname("Gupta");
}
