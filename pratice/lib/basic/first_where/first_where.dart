void main(List<String> args) {
  List<SampleModel> data = [
    SampleModel(id: 1, name: 'rifky', subname: 'firmansyah'),
    SampleModel(id: 2, name: 'samsul', subname: 'sumbul'),
    SampleModel(id: 3, name: 'kipli', subname: 'hansem'),
    SampleModel(id: 4, name: 'ucok', subname: 'baba'),
    SampleModel(id: 5, name: 'princes', subname: 'ica')
  ];

  final String name = 'ucok';

  SampleModel sampleModel = data.firstWhere((element) => element.name == name);
  Map<String, dynamic> sample(SampleModel sample) =>
      {"id": sample.id, "name": sample.name, "subname": sample.subname};

  sample(sampleModel).forEach((key, value) {
    print("key : $key , value : $value");
  });
}

class SampleModel {
  final int id;
  final String name;
  final String subname;

  SampleModel({required this.id, required this.name, required this.subname});
}
