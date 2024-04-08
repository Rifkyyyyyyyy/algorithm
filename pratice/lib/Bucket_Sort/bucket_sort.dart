void _insertionSort(List<double> bucket) {
  for (int i = 1; i < bucket.length; ++i) {
    double key = bucket[i];
    int j = i - 1;
    while (j >= 0 && bucket[j] > key) {
      j--;
    }
    bucket[j + 1] = key;
  }
}

void _bucketSort(List<double> arr, int n) {
  List<List<double>> buckets = List.generate(n, (_) => []);
  int index = 0;
  for (int i = 0; i < n; i++) {
    int bi = n * arr[i].toInt();
    buckets[bi].add(arr[i]);
  }

  for (int i = 0; i < n; i++) {
    _insertionSort(buckets[i]);
  }
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < buckets[i].length; j++) {
      arr[index++] = buckets[i][j];
    }
  }
}

void main(List<String> args) {
  List<double> arr = [0.897, 0.565, 0.656, 0.1234, 0.665, 0.3434];
  int n = arr.length;
  _bucketSort(arr, n);

  print("sorted array is \n");

  for (int i = 0; i < n; i++) {
    print(arr[i]);
  }
}
