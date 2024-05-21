class Animal {
  String name;
  String age;
  String gender;
  String color;

  Animal(this.name, this.age, this.gender, this.color);

  void breath() {
    print("$name is breathing too");
  }

  void sleep(String hour) {
    print("$name sleeping upto $hour");
  }

  void run(String destination) {
    print("$name destination is $destination");
  }
}

class Cat extends Animal {
  Cat(String name, String age, String gender, String color)
      : super(
          name,
          age,
          gender,
          color,
        );

  void makeSound() {
    print("$name make sound like Meow");
  }
}

class Dog extends Animal {
  Dog(String name, String age, String gender, String color)
      : super(
          name,
          age,
          gender,
          color,
        );

  void makeSound() {
    print("$name make sound like Woof");
  }
}

void main() {
  Cat oscar = Cat("Oscar", "15", "male", "Brown");
  oscar.makeSound();
  print("The name of cat is ${oscar.name}");
  oscar.run("Home");
  oscar.sleep("10hours");
  print("");
  Dog tony = Dog("tony", "10", "male", "black");
  tony.makeSound();
  print("The name of cat is ${tony.name}");
  tony.run("Home");
  tony.sleep("11hours");
}
