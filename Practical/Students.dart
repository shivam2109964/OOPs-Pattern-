class Student {
  final firstName;
  final lastName;
  int grade;

  Student({required this.firstName, required this.lastName, this.grade = 0});

  @override
  String toString() {
    return ''' Result 
  ---- Student details
  ---- First Name: $firstName,
  ---- Last Name: $lastName,
  ---- Total Grade: $grade,
  ''';
  }
}

void main() {
  final bert = Student(firstName: "Bert", lastName: "Wick", grade: 95);
  final erie = Student(firstName: "Erie", lastName: "Snow", grade: 85);

  print(bert.toString());
  print(erie.toString());
}
