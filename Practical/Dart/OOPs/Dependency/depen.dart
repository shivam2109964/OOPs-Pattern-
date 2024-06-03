class Engine {
  void start() {
    print("Engine Started");
  }
}

class Car {
  final Engine engine;
  Car(this.engine);
  void startCar() {
    engine.start();
    print("Cat started");
  }
}

void main() {
  var engine = Engine();
  var myCar = Car(engine);
  myCar.startCar();
}
