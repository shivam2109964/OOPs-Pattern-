class User {
  int? _id;
  String? _name;

  User({int id = 0, String name = 'Shivam'}) {
    _id = id;
    _name = name;
  }

  void display() {
    print("Name: $_name Id: $_id");
  }
}

void main() {
  final user = User(
    id: 12,
  );
  user.display();
}
