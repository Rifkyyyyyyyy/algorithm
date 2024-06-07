// selection sort

void _selection(List<int> data, int n) {
  for (int i = 0; i < n; i++) {
    // loop dalam
    int minIdx = i; // menginisialisasikan variabel dengan nilai dari i
    for (int j = i + 1; j < n; j++) {
      // loop luar
      if (data[j] < data[minIdx]) {
        // mengecek apakah data[index j] < data[index i]
        minIdx = j; // mengubah min indx menjadi j
      }
      if (minIdx != i) {
        // mengecek apakah minIndx tidak sama dengan i
        int temp = data[i]; // menyimpan index dari data[i] kedalam temp
        data[i] = data[minIdx]; // mengubah data i menjadi index min idx
        data[minIdx] = temp; // mengubah data minIndx menjadi temp;
      }
    }
  }
}

void _printArr(List<int> data, int size) {
  for (int i = 0; i < size; i++) {
    // menngakes semua data dari index size
    print(data[i]); // mencetak nilai index dari data
  }
}

void main(List<String> args) {
  List<int> data = [27121, 2112, 2122, 2110, 22, 6617, 1112]; // membuat data
  int n = data.length; // menyimpan panjang data;

  _selection(data, n);
  print('hasil sorted : \n');
  _printArr(data, n);
}
