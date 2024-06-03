abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

void main() {
  final DataRepository dataRepository = FakeWebServer();
  final temperature = dataRepository.fetchTemperature("Berlin");
  print("Temperature is $temperature");
  print("");
  final repo = DataRepository();
  final temp = repo.fetchTemperature("Azam");
  print(temp);
}
