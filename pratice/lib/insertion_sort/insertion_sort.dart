void _insertSort(List<int> data, int n) {
  for (int a = 1; a < n; a++) {
    int b = data[a];
    int c = a - 1;
    while (c >= 0 && data[c] > b) {
      data[c + 1] = data[c];
      c = c - 1;
    }
    data[c + 1] = b;
  }
}

void _printSort(List<int> data, int n) {
  for (int i = 0; i < n; i++) {
    print(data[i]);
  }
}

void main(List<String> args) {
  List<int> data = [138213, 129172, 398131, 21, 21212, 211, 1121, 20, 1];
  int n = data.length;

  _insertSort(data, n);
  print('hasil sort : \n');
  _printSort(data, n);
}
