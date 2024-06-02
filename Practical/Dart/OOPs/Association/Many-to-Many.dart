///Many-to-Many [Association]
///In this example, we have two classes [Course] and [Student].
///Each [Course] object can have multiple [Student] objects associated with it, 
///and each student can be associated with mulitple [Course] ojects. 


class Course {
  int id;
  String name;
  Course(this.id, this.name);
  List<Student> students = [];
}

class Student {
  int id;
  String name;
  List<Course> courses = [];
  Student(this.id, this.name);
}

void main() {
  Course course1 = Course(1, "Java");
  Course course2 = Course(2, "C++");
  Course course3 = Course(3, "Dart");

  Student student1 = Student(100, "Bhootnath");
  Student student2 = Student(200, "Ranu");
  Student student3 = Student(300, "Vasu");
  Student student4 = Student(400, "Shivam");

//Courses
  course1.students.add(student1);
  course1.students.add(student3);

  course2.students.add(student1);
  course2.students.add(student2);
  course2.students.add(student3);

  course3.students.add(student4);

//Students
  student1.courses.add(course1);
  student1.courses.add(course2);

  student2.courses.add(course2);

  student3.courses.add(course1);
  student3.courses.add(course2);

  student4.courses.add(course3);

  print("Courses");
  for (Course course in [course1, course2, course3]) {
    print("${course.name} - Students");
    for (Student student in course.students) {
      print("${student.name}");
    }
  }
  print("");
  print("Students");
  for (Student student in [student1, student2, student3, student4]) {
    print("${student.name} - Courses");
    for (Course course in student.courses) {
      print("${course.name}");
    }
  }
}
