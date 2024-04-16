// 1. Studi Kasus:
// Seorang pemilik toko bunga ingin membuat daftar berisi nama-nama bunga yang akan dijual di tokonya.
// Namun, dia ingin daftar ini di-generate secara otomatis berdasarkan pola berikut:
// - Bunga-bunga mawar dengan warna merah, putih, dan pink.
// - Bunga-bunga tulip dengan warna ungu, kuning, dan putih.
// - Bunga-bunga matahari dengan warna kuning dan oranye.
// - Setiap jenis bunga akan memiliki tiga varietas.

List<String> flower({required String type, required List<String> color}) {
  List<String> name = [];
  for (String c in color) {
    for (int i = 1; i <= 3; i++) {
      name.add('$type : $c $i');
    }
  }
  return name;
}

void main(List<String> args) {
  List<String> roses = flower(type: 'mawar', color: ["merah", "putih", "pink"]);
  List<String> tulip =
      flower(type: 'mawar', color: ["ungu", "kuning", "putih"]);
  List<String> matahari = flower(type: 'mawar', color: ["kuning", "oranye"]);

  List<String> data = [...roses, ...tulip, ...matahari];
  print('Daftar bunga di toko:');
  for (var d in data) {
    print(d);
  }
}

// 2 Studi Kasus:

// Seorang penjahit ingin membuat daftar berisi ukuran-ukuran pakaian yang akan diproduksi di tokonya.
// Namun, dia ingin daftar ini di-generate secara otomatis berdasarkan pola berikut:
// - Pakaian atas (baju) dengan ukuran S, M, dan L.
// - Pakaian bawah (celana) dengan ukuran 28, 30, dan 32.
// - Aksesoris (topi) dengan ukuran standar.

// Setiap jenis pakaian akan memiliki tiga ukuran yang berbeda.
// Tugas Anda adalah membuat program Dart yang menghasilkan daftar ukuran-ukuran pakaian sesuai dengan pola yang dijelaskan.
// Anda dapat memulai dengan mendefinisikan struktur data untuk mewakili jenis pakaian dan ukurannya, lalu menulis logika untuk
// meng-generate daftar ukuran pakaian berdasarkan pola yang diberikan.
// Akhirnya, Anda dapat menampilkan daftar ukuran pakaian yang dihasilkan.
