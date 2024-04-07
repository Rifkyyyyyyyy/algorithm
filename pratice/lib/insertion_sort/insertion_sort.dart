void insertionSort(List<int> arr, int j) {
  int a, b, c;
  for (a = 1; a < j; a++) {
    b = arr[a];
    c = a - 1;
    while (c >= 0 && arr[c] > b) {
      arr[c + 1] = arr[c];
      c = c - 1;
    }
    arr[c + 1] = b;
  }
}
