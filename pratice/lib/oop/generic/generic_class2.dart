import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class Model {
  final int id;
  final String name;

  Model({required this.id, required this.name});

  @override
  String toString() {
    return 'id: $id, name: $name';
  }
}

abstract class Sample<T> {
  final T? value;

  Sample({this.value});
}

class Success<T> extends Sample<T> {
  Success(T data) : super(value: data);
}

class Failed<T> extends Sample<T> {
  Failed(T data) : super(value: data);
}

abstract class Repo {
  Sample<List<Model>> add(List<Model> data);
  Sample<List<Model>> delete(int id, List<Model> data);
  Sample<List<Model>> search(int id, List<Model> data);
}

class RepoImpl implements Repo {
  @override
  Sample<List<Model>> add(List<Model> data) {
    if (data.isNotEmpty) {
      return Success(data);
    } else {
      return Failed([]);
    }
  }

  @override
  Sample<List<Model>> delete(int id, List<Model> data) {
    data.removeWhere((model) => model.id == id);
    return Success(data);
  }

  @override
  Sample<List<Model>> search(int id, List<Model> data ) {
    dynamic foundModel = data.where((element) => element.id == id).toList();
    if (foundModel != null) {
      return Success(foundModel);
    } else {
      return Failed([]);
    }
  }
}

void main(List<String> args) {
  RepoImpl repoImpl = RepoImpl();

  List<Model> data =
      List.generate(20, (index) => Model(id: index, name: 'rifky'));

  // var add = repoImpl.add(data);

  // if (add is Success<List<Model>>) {
  //   print(add.value);
  // }

  // var del = repoImpl.delete(10, data);
  // if (del is Success<List<Model>>) {
  //   print(del.value);
  // }

  var search = repoImpl.search(1, data);
  if (search is Success<List<Model>>) {
    print(search.value);
  }
}
