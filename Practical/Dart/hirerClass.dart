enum Grade { A, B, C, D, E, F }

class Person {
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  Person(this.givenName, this.surname);

  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(
    String givenName,
    String surname,
  ) : super(givenName, surname);

  var grade = <Grade>[];

  void isDisplayValue() {}
}

//Multi-level hierarchy

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surName)
      : super(givenName, surName);

  static const minPracTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);

  bool get isEligible => grade.every((element) => element != Grade.F);

  void ifIsEligible() {
    if (isEligible == true) {
      print(givenName + " Is Eligible");
    }
  }
}

void main() {
  final student = Student(
    "Shivam",
    "Gupta",
  );
  student.grade.add(Grade.C);
  final student1 = Student("Rahul", "Singh");
  student1.grade.add(Grade.F);

  final stuAth = StudentAthlete(student.givenName, student.surname);
  stuAth.ifIsEligible();
  final stuAuth = StudentAthlete(student1.givenName, student1.surname);
  stuAuth.ifIsEligible();
}
