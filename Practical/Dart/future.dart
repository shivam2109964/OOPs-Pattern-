void main() async {
  var result = await returnTime();
  print(result);
}

Future<int> returnTime() {
  var time = Future.delayed(
      Duration(
        seconds: 2,
      ), () {
    return 42;
  });
 return time;
}
