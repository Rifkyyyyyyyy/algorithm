// fun

T sample<T>(T callback) {
  return callback;
}

// void main(List<String> args) {
//   Function(String) a = sample<Function(String)>((s) {
//     return 'hello $s';
//   });

//   print(a('rifky'));

//   Function(int) equal = sample<Function(int)>((s) {
//     if (s % 2 == 0) {
//       return true;
//     } else {
//       return false;
//     }
//   });

//   print(equal(10));
// }

// class

abstract class State<T> {
  final T? value;
  final String? err;

  State({this.value, this.err});
}

class Success<T> extends State<T> {
  Success(T value) : super(value: value);
}

class Failed<T> extends State<T> {
  Failed(String fail) : super(err: fail);
}
