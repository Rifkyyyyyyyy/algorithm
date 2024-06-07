int binarySearch(List<int> data, int item, int high, int low) {
  if (high <= low) return (item > data[low]) ? (low + 1) : low;
  // apakah tinggi kurang dari sama dengan low ?
  // jika iya return ((nilai item lebih besar data[index]) jika true maka akan return(low + 1) , jika false maka akan direturn low saja)

  int mid = low +
      ((high - low) ~/
          2); // inisialisasikan variabel mid dengan nilai low + ((hasil kurang dari high - low) / 2);

  if (item == data[mid]) {
    return mid;
  } // cek kondisi jika item bernilai sama dengan data[index] , lalu return nilai dari mid

  if (item > data[mid]) return binarySearch(data, item, high, mid + 1);
  return binarySearch(data, item, mid - 1, low);
}

void insertion(List<int> data, int length) {
  for (int i = 1; i < length; ++i) {
    int j = i - 1;
    int selected = data[i];
    int loc = binarySearch(data, selected, i - 1, 0);
    while (j >= loc) {
      data[j + 1] = data[j];
      j--;
    }
    data[j + 1] = selected;
  }
}

void main(List<String> args) {
  List<int> data = [100, 28282, 28, 281, 2121, 2929, 12, 22, 21, 33];

  int n = data.length;

  insertion(data, n);

  print('Sorted array:\n');

  for (int i = 0; i < n; i++) {
    print('Result: ${data[i]}');
  }
}
