class Cat {
  String name;
  String gender;
  String age;
  String weight;
  String color;

  Cat(this.name, this.gender, this.age, this.color, this.weight);

  void breath() {
    print("$name is breathing too");
  }

  void eat(String food) {
    print("$name favorite food is $food");
  }

  void run(String destination) {
    print("$name destination is $destination");
  }

  void sleep(String hours) {
    print("$name sleep of $hours");
  }
}

void main(){
  Cat oscar = Cat("Oscar", "male", "15", "Brown", "16kg");
  oscar.breath();
  print("Cat name is ${oscar.name}");

  Cat luna = Cat("Luna", "female", "12", "White", "10kg");
  luna.breath();
  print("Cat name is ${luna.name}");

}