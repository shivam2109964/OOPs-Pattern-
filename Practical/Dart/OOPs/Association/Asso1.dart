class Mother {
  String name;
  List<Child> children;

  Mother(this.name, this.children);
}

class Child {
  String name;
  Child(this.name);
}

void main() {
  var child1 = Child("Alpha");
  var child2 = Child("Beta");
  var child3 = Child("Gamma");
  var mother = Mother("Carol", [child1, child2, child3]);

  print("Mother: ${mother.name}");
  print("---- Son's Name ----");
  for (var childName in mother.children) {
    print(childName.name);
  }
}
