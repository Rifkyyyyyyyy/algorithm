void _selectionSort(List<int> arr, int n) {
  int i, j, minIdx;
  for (i = 0; i < n; i++) {
    minIdx = i;
    for (j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIdx]) {
        minIdx = j;
      }
    }
    if (minIdx != i) {
      int temp = arr[i];
      arr[i] = arr[minIdx];
      arr[minIdx] = temp;
    }
  }
}

void _printArr(List<int> arr, int size) {
  for (int i = 0; i < size; i++) {
    print(arr[i]);
  }
}

void main(List<String> args) {
  List<int> arr = [64, 25, 12, 22, 11];
  int n = arr.length;

  _selectionSort(arr, n);
  print('Sorted array : \n');
  _printArr(arr, n);
}

