void main() {
  int? value;

  value = value ??= 20;

  print(value);

  const parties = ['hellos', 'beutiess'];
  const animals = ['dogs', 'elephants', 'cat'];


  const universe = ['humans', ...parties, ...animals, ];
  

  print(universe);
}
