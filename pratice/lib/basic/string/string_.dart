// void main(List<String> args) {
//   String a = 'rifky kocak';
//   var b = a.split(' ').first + a.split(' ').last;
//   var c = '${a[0]}${a[1]} : ${a[2]}${a[3]} : ${a[4]}${a[5]}';
//   var d = c.padLeft(8, '0');
//   print(b);
//   print(d);
// }

void main(List<String> args) {
  String name = 'rifky';
  for (int i = 0; i < name.length; i++) {
    for (int j = name.length - 1; j > i; j--) {
      String a = name[i].split(' ').first;
      String b = name[j];
      print(a);
    }
  }
}
