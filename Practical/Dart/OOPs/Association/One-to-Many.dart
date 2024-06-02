/// One-to-Many [Association]
/// In this example we have two classes [Employee] and [Department].
/// Each [Department] object have multiple [Employee] object associated with it,
/// and each [Employee] object belongs to only one [Department] object.

class Employee {
  int id;
  String name;
  Department department;
  Employee(this.id, this.name, this.department);
}

class Department {
  int id;
  String name;
  List<Employee> emp = [];
  Department(this.id, this.name);
  void addEmployee(Employee employee) {
    emp.add(employee);
    employee.department = this;
  }
}

void main() {
  Department dept = Department(1, "HR");

  Employee employee = Employee(100, "John Snow", dept);
  Employee employee1 = Employee(200, "Jane Man", dept);
  Employee employee2 = Employee(300, "Gaurav", dept);

  dept.addEmployee(employee);
  dept.addEmployee(employee1);
  dept.addEmployee(employee2);

  print("Department: ${dept.name}");
  print("Employee:");
  for (Employee employee in dept.emp) {
    print("${employee.name}");
  }
}
