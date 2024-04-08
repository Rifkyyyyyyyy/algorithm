import 'dart:math' as math;
// counting sort

// 1. Inisialisasi: Hitung frekuensi kemunculan setiap elemen dalam array dan simpan dalam sebuah struktur data.
// 2. Akumulasi: Hitung jumlah akumulasi frekuensi elemen-elemen sehingga kita tahu jumlah elemen yang kurang dari atau sama dengan setiap elemen.
// 3. Penempatan: Letakkan setiap elemen pada posisi yang sesuai dalam array hasil berdasarkan nilai akumulasi frekuensinya.
// 4. Pengurangan: Kurangi jumlah yang tersisa dari setiap elemen yang sama dengan yang telah diurutkan sebelumnya.
// 5. Ulangi langkah 3-4 sampai semua elemen telah ditempatkan pada posisi yang sesuai.

class GFG {
  static List<int> countSort(List<int> arr) {
    int n = arr.length;
    int m = 0;
    for (int i = 0; i < n; i++) {
      m = math.max(m, arr[i]);
      print('nilai m : $m');
    }

    List<int> count = List<int>.generate(m + 1, (index) => 0);

    for (int i = 0; i < n; i++) {
      count[arr[i]]++;
      print('nilai count : $arr');
    }
    for (int i = 1; i <= m; i++) {
      count[i] += count[i - 1];
      print('nilai count : $arr');
    }

    List<int> output = List<int>.generate(n, (index) => 0);
    for (int i = n - 1; i >= 0; i--) {
      output[count[arr[i]] - 1] = arr[i];
      count[arr[i]]--;
      print('nilai output : $output');
      print('nilai count : $arr');
    }
    return output;
  }
}

void main(List<String> args) {
  List<int> input = [4, 3, 12, 1, 5, 5, 3, 9];
  List<int> output = GFG.countSort(input);
  for (int i = 0; i < input.length; i++) {
    print(output[i]);
  }
}
