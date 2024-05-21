class Animal {
  String name;
  String gender;
  String age;
  String weight;
  String color;

  Animal(this.name, this.gender, this.age, this.weight, this.color);

  void breathe() {
    print("$name is breathing Oxygen too");
  }

  void eat(String food) {
    print("$name eating $food");
  }

  void run(String destination) {
    print("$name destination is $destination");
  }

  void sleep(String hours) {
    print("$name is sleeping for $hours");
  }
}

class Cat extends Animal {
  Cat(
    String name,
    String gender,
    String age,
    String weight,
    String color,
  ) : super(
          name,
          gender,
          age,
          color,
          weight,
        );

  void makeSound() {
    print("Cat make sound like Meow");
  }
}

class Dog extends Animal {
  String _bestFriend = "human";
  Dog(String name, String gender, String age, String weight, String color,
      this._bestFriend)
      : super(name, gender, age, weight, color);

  void sound() {
    print("Dog make sound like Woof");
  }
}

void main() {
  Dog fido = Dog("Fido", "Male", "12", "15kg", "Red", "Human");
  fido.eat("Biscute");
  print(fido._bestFriend);
}
