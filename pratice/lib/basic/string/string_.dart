void main(List<String> args) {
  String a = 'rifky kocak';
  var b = a.split(' ');
  var c = '${a[0]}${a[1]} : ${a[2]}${a[3]} : ${a[4]}${a[5]}';
  var d = c.padLeft(8, '0');
  print(b);
  print(d);
}
