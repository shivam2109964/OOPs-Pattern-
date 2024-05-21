void main() {
  noReturnValue();
  int recieveValue = withReturnValue();
  print(recieveValue);
}

void noReturnValue() {
  int x = 10;
  int y = 10;
  print(x + y);
}

int withReturnValue() {
  int x = 10;
  int y = 10;
  return x + y;
}
