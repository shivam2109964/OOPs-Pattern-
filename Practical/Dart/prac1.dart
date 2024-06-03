enum Grade { A, B, C, D, E, F, G }

class Person {
  String givenName;
  String surname;

  Person(this.givenName, this.surname);

  String get fullName => '$givenName + $surname';

  @override
  String toString() => fullName;
}

class Student extends Person {
  String givenName;
  String surname;
  Student(this.givenName, this.surname) : super(givenName, surname);
  var grade = <Grade>[];

  String get yourGrade => grade.first.toString();
  @override
  String toString() {
    return yourGrade;
  }
}

void main() {
  var person = Person("Shivam", "Gupta");
  var student = Student(person.givenName, person.surname);
  student.grade.add(Grade.C);
  print("Your grade is ---> ${student.yourGrade}");
}
