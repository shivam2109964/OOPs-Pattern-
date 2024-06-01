class Sphares {
  final _radius;
  static const pi = 3.14;

  const Sphares({required double radius}) : _radius = radius;

  double get areaOfSurface {
    double radius = _radius;
    double pi = Sphares.pi;
    return 4 * pi * radius * radius;
  }

  double get volume {
    double radius = _radius;
    double pi = Sphares.pi;
    return (4 / 3) * pi * radius * radius * radius;
  }

  @override
  String toString() {
    return '''Result
    ---- Radius is: $_radius
    ---- Area of Surface: ${areaOfSurface.toStringAsFixed(2)}
    ---- Volume: ${volume.toStringAsFixed(2)}
    ''';
  }
}

void main() {
  final sphare = Sphares(radius: 12);
  print(sphare.toString());
}
