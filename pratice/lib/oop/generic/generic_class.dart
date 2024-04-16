class Sample<T> {
  final T? data;

  Sample({this.data});

  String nilai() => 'nilai $data';
}

void main(List<String> args) {
  Sample sample = Sample<String>(data: 'rifky ');
  print(sample.nilai());

  Sample sample2 = Sample<int>(data: 20);
  print(sample2.nilai());

  Sample sample3 = Sample<Set>(data: {"apel ", "anggur", "jeruk"});
  for (var i in sample3.data) {
    print(i);
  }

  Sample sample4 =
      Sample<Person>(data: Person(id: 1, name: 'rifky', last: 'firmansyah'));

  Map<String, dynamic> toMap(Person person) =>
      {"id": person.id, "name": person.name, "last_name": person.last};

  print(toMap(sample4.data));
}

class Person {
  final int id;
  final String name;
  final String last;

  Person({required this.id, required this.name, required this.last});
}
