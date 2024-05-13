class Sample {
  final String? s;

  Sample({this.s});

  bool get checl => s == null;
}

void main(List<String> args) {
  Sample sample = Sample();
  print(sample.checl);
  Sample sample2 = Sample(s: 'kucing');
  print(sample2.checl);
}
