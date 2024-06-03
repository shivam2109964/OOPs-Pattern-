class Shape {
  void draw() {
    print("Draw a shape");
  }
}

class Polygon extends Shape {
  void draw() {
    super.draw();
    print("Drawing a Polygon Shape");
  }
}

class Ellipse extends Shape {
  void draw() {
    super.draw();
    print("Drawing a Ellipse Shape");
  }
}

class Spline extends Shape {
  void draw() {
    super.draw();
    print("Drawing a Spline Shape");
  }
}

void main() {
  var shapes = [Polygon(), Ellipse(), Spline()];

  for (var shape in shapes) {
    shape.draw();
  }
}
