///One-to-One [Association]
///In this example, we have two classes [Employee] and [Department].
///Each [Department] object is associated with only one [Employee] object,
///and each [Employee] object can be associated with only one [Department] object.

class Employee {
  int id;
  String name;
  Employee(this.id, this.name);
}

class Department {
  int id;
  String name;
  Employee employee;
  Department(this.id, this.name, this.employee);
}

void main() {
  Employee emp = Employee(1, "Shivam");
  Department dept = Department(10, "HR", emp);
  print("Employee Id: ${dept.employee.id}");
  print("Employee Name: ${dept.employee.name}");
}


