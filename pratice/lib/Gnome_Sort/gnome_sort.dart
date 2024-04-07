// i = indexs;
// ketika i kurang dari panjang daftar , maka.
// - jika i == 0, maka tambahkan 1 ke i.
// - jika ∈(i) > ∈(i-1), maka tambahkan 1 ke i.
// - jika ∈(i) < ∈(i-1), maka ubah ∈(i) ke ∈(i-1) dan tambahkan 1 ke i.

int _gnome(List<int> arr, int n) {
  int index = 0;
  while (index < n) {
    if (index == 0) {
      index++;
    }
    if (arr[index] >= arr[index - 1]) {
      index++;
    } else {
      int temp = arr[index];
      arr[index] = arr[index - 1];
      arr[index - 1] = temp;
      index--;
    }
  }
  return index;
}

void _printArr(List<int> arr, int n) {
  print('Sorted sequence after Gnome sort:');
  for (int i = 0; i < n; i++) {
    print(arr[i]);
  }
}

void main(List<String> args) {
  List<int> arr = [34, 2, 10, -9];
  int n = arr.length;

  print(_gnome(arr, n));
  _printArr(arr, n);
}
