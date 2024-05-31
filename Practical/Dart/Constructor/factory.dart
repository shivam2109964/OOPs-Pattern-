class User {
  int id;
  String name;

  User(this.id, this.name);

  User.anonymous(String name) : this(21, name);

  factory User.fact() {
    int id = 110;
    String name = "Sivam";
    return User(id, name);
  }

  void display() {
    print("Name: $name, ID: $id");
  }
}

void main() {
  final user = User(212, "Shivam");
  final userUnknown = User.anonymous("Shiva");
  final userFc = User.fact();
  user.display();
  print("");
  userUnknown.display();
  print("");
  userFc.display();
}
