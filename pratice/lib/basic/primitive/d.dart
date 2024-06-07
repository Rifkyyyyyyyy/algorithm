// Diberikan sebuah fungsi \( f(x, y) = xy^2 \). Hitunglah nilai dari \(\sum_{x=1}^{3} \sum_{y=2}^{4} f(x, y)\).

// Anda diminta untuk menuliskan program dalam bahasa Dart untuk menghitung nilai tersebut.

// 1. Tentukan fungsi \( f(x, y) = xy^2 \).
// 2. Tentukan nilai awal dan akhir untuk \( x \) dan \( y \).
// 3. Gunakan nested loop untuk menghitung nilai dari double sigma, yaitu:
//    - Loop luar untuk nilai \( x \) dari 1 hingga 3.
//    - Loop dalam untuk nilai \( y \) dari 2 hingga 4.
// 4. Di dalam loop, hitung nilai \( f(x, y) \) dan tambahkan ke total.
// 5. Cetak hasil total.

double satu() {
  double initial = 0;
  for (int i = 1; i <= 3; i++) {
    for (int j = 2; j <= 4; j++) {
      double x = i * j * j.toDouble();
      initial += x;
    }
  }
  return initial;
}

// Berikut adalah kisi-kisi untuk menyelesaikan soal tersebut dalam bahasa pemrograman Dart:

// 1. Tentukan fungsi \( g(a, b) = \frac{a}{b} \).
// 2. Tentukan nilai awal dan akhir untuk \( a \) dan \( b \).
// 3. Gunakan nested loop untuk menghitung nilai dari double sigma, yaitu:
//    - Loop luar untuk nilai \( a \) dari 1 hingga 5.
//    - Loop dalam untuk nilai \( b \) dari 2 hingga 4.
// 4. Di dalam loop, hitung nilai \( g(a, b) \) dan tambahkan ke total.
// 5. Cetak hasil total.

// Anda dapat menggunakan kisi-kisi ini sebagai panduan untuk membuat program Dart yang sesuai dengan soal tersebut.

double dua() {
  double initial = 0.0;
  for (int i = 1; i <= 5; i++) {
    for (int j = 2; j <= 4; j++) {
      double x = i / j.toDouble();
      initial += x;
    }
  }

  return initial;
}

void main(List<String> args) {
  print('nilai soal 1 : ${satu()}');
  print('nilai soal 2 : ${dua()}');
}



