int search(List<int> data, int n, int x) {
  for (int i = 0; i < n; i++) {
    if (data[i] == x) {
      return i;
    } // mengakses semua index dari data yang bernilai sama dengan x , lalu mereturn index nya (i)
  }
  return -1; // kalo ga ada maka akan return -1
}

void main(List<String> args) {
  List<int> data = [1, 2, 3, 33, 332, 2121, 231];
  int x = 2121;
  int n = data.length;

  int result = search(data, n, x);

  if (result == -1) {
    print('element is not present in array');
  } else {
    print('element is present at index : $result');
  }
}
