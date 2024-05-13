void bubble(List<int> arr, int n) {
  bool swapped;
  for (int i = 0; i < n - 1; i++) {
    print('nilai n - 1 = ${n - 1}');
    swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j + 1] = temp;
        swapped = true;
      }
    }
    print('nilai i = $i');
    if (swapped == false) {
      break;
    }
  }
}

void _printArr(List<int> arr, int size) {
  for (int i = 0; i < size; i++) {
    print(arr[i]);
  }
}

void main(List<String> args) {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  int n = arr.length;
  bubble(arr, n);
  print('Sorted array : \n');
  _printArr(arr, n);
}