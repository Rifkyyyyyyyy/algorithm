void main(List<String> args) {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  age(arr);
}

void age(List<int> arr) {
  final int initialValue = 5;
  int totalAge = arr.fold(
      initialValue, (previousValue, element) => previousValue + element);
  print('jumlah semua umur : $totalAge');
}
