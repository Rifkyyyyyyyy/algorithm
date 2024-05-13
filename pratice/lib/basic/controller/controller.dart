// stream

// Stream<String> getUsername() {

//   return Stream.fromIterable(["rifky", "ririn", "ucup"]);
// }

// void main(List<String> args) async {
//   await for (String i in getUsername()) {
//     print('username : $i');
//   }
// }

// import 'dart:async';

// Stream<String> generateName(String name, int age) async* {
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'hello';
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'my name is $name';
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'nice to meet you';
// }

// void main(List<String> args) async {
//   StreamController<String> controller = StreamController();
//   generateName('rifky', 19).listen((value) {
//     print('value : $value');
//     controller.add(value);

//   }, onDone: () {
//     print('strem selesai');
//   });

//   controller.stream.listen((event) {
//     print('controller value : $event');
//   });
//  controller.sink.add('nice to meet you :)');

// }

// import 'dart:async';

// void main() {
//   // Membuat broadcast stream dengan tipe data String
//   Stream<String> broadcastStream = Stream.periodic(
//           Duration(milliseconds: 100), (index) => 'Data ke-${index + 1}')
//       .take(100)
//       .asBroadcastStream();

//   // Listener 1
//   broadcastStream.listen((data) {
//     print('Listener 1: $data');
//   });

//   // Listener 2
//   broadcastStream.listen((data) {
//     print('Listener 2: $data');
//   });
// }

// void main(List<String> args) async {
//   await for (var number in data()) {
//     for (int i = 0; i < number.length; i++) {
//       await Future.delayed(Duration(seconds: 1));
//       print('data ke : ${number[i]}');
//       if (i == number.length - 1) {
//         print('\n');
//         print('menunggu data baru....');
//       }
//     }
//   }
// }

void main(List<String> args) {
  data().listen((event) {
    for (int i = 0; i < event.length; i++) {
      print('data ke : ${event[i]}');
    }
  });
}

Stream<List<int>> data() async* {
  yield [
    1,
    2,
    3,
    4,
    5,
  ];

  yield [
    12 , 212, 21, 21, 21 ,21
  ];
}
