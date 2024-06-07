import 'dart:io';

int a(int base, int n) {
  int c = base *= n;
  return c;
}

void main(List<String> args) {
  print("masukan angka :");
  int? base = int.tryParse(stdin.readLineSync()!);
  print("masukan pangkat :");
  int? n = int.tryParse(stdin.readLineSync()!);
  if (n != null && base != null) {
    try {
      int s = a(base, n);
      print(s);
    } catch (e) {
      throw Exception("error : $e");
    }
  }
}
