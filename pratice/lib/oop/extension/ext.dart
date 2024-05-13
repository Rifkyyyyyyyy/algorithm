class Sample {
  final String name;

  // ga ada greet disini

  Sample({required this.name});
}

extension Samples on Sample {
  String greet() => 'hello $name';
}

void main(List<String> args) {
  Sample sample = Sample(name: 'rifky');
  print(sample.greet());
}

// ngasih fungsi tambahan